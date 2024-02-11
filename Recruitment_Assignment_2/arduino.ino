#include <ros.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>
#include <stdio.h>
#include <string.h>

ros::NodeHandle nh;

// Global
int currentServoPin = 0;
int onTime, offTime, totalTime = 20000;
bool rotateCw = 0, rotateCcw = 0, idle = 0;

void servoCallBack(const std_msgs::Int32& servo_no) {
  currentServoPin = servo_no.data;
}

void rotateCallBack(const std_msgs::String& rotate_key) {

  char *s = rotate_key.data;
  if(!strcmp(s, "i")) {
      // stoppin
      idle = 1;
      rotateCw = 0;
      rotateCcw = 0;
  }
  
  if(!strcmp(s, "l")) { // cw
      idle = 0;
      rotateCcw = 0;
      rotateCw = 1;
  } 
  
  if(!strcmp(s, "r")) { // ccw

      idle = 0;
      rotateCcw = 1;
      rotateCw = 0;
  }
}

ros::Subscriber<std_msgs::Int32> servoSubscriber("servo_no", &servoCallBack);
ros::Subscriber<std_msgs::String> rotateSubscriber("rotate_key", &rotateCallBack);

void setup()
{
  pinMode(currentServoPin, OUTPUT);
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.subscribe(servoSubscriber);
  nh.subscribe(rotateSubscriber);
}

void loop()
{
  nh.spinOnce();
  delay(1);

  if(idle) {
      digitalWrite(currentServoPin, LOW);
      digitalWrite(13, LOW);
  }

  if(rotateCw) {
      onTime = 1000; // Clockwise Pulse 0 degree
      offTime = totalTime - onTime;
      digitalWrite(currentServoPin, HIGH);
      digitalWrite(13, HIGH);
      delayMicroseconds(onTime);
      digitalWrite(currentServoPin, LOW);
      digitalWrite(13, HIGH);
      delayMicroseconds(offTime);

  }

  if(rotateCcw) {
    onTime = 2000; // Clockwise Pulse 0 degree
      offTime = totalTime - onTime;
      digitalWrite(currentServoPin, HIGH);
      digitalWrite(13, HIGH);
      delayMicroseconds(onTime);
      digitalWrite(currentServoPin, LOW);
      digitalWrite(13, HIGH);
      delayMicroseconds(offTime);
  }
}
