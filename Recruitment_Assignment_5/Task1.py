import cv2 as cv
from cv2 import aruco
import numpy as np
import os

# Initialize params and dictionary
# ArUco tags of ORIGINAL ArUco dictionary
marker_dictionary = aruco.getPredefinedDictionary(aruco.DICT_ARUCO_ORIGINAL)
marker_params = aruco.DetectorParameters_create()

def getMarker(image_path):  

    # read image
    frame = cv.imread(image_path)
    frame = cv.resize(frame, (400, 400))

    #grayscaling
    gray_frame = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)

    marker_corners, marker_IDs, reject = aruco.detectMarkers(
        gray_frame, marker_dictionary, parameters=marker_params
    )  

    # marker_IDs = <class 'numpy.ndarray'> type
    if marker_IDs is not None:
        return marker_IDs
    else:
        return -1


if __name__ == "__main__":

    folder = './aruco_tags'
    file_list = sorted([f for f in os.listdir(f'{folder}') if f.endswith('.PNG')])

    output_file = 'output.txt'

    with open(output_file, 'w') as output_file:
    
        output_file.write("Image\tMarker ID\tTASK\n")

        for file in file_list:
            image_path = os.path.join(folder, file)
            marker_id = getMarker(image_path)[0][0]

            task = ""
            if marker_id == 0:
                task = "SLEEP"
            elif marker_id == 1:
                task = "MOVE"
            elif marker_id == 2:
                task = "WALK"
            elif marker_id == 3:
                task = "HEART"
            elif marker_id == 4:
                task = "PICK"
            elif marker_id == 5:
                task = "BARK"
            elif marker_id > 5:
                task = "MOYE MOYE"

            output_file.write(f"{file}\t\t{marker_id}\t\t{task}\n")

    print(f"Results written to '{output_file}'.")

    