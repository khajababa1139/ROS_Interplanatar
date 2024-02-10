import cv2 as cv
from cv2 import aruco
import numpy as np

marker_dict = aruco.getPredefinedDictionary(aruco.DICT_ARUCO_ORIGINAL)
image_path = './distance/1.jpeg'

marker_params = aruco.DetectorParameters_create()

frame = cv.imread(image_path)
frame = cv.resize(frame, (1000, 500))

gray_frame = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
# Got best results at 120, 255 range
_, binary_frame = cv.threshold(gray_frame, 120, 255, cv.THRESH_BINARY) 

marker_corners, marker_IDs, reject = aruco.detectMarkers(
    binary_frame, marker_dict, parameters=marker_params
)

if marker_IDs is not None and len(marker_IDs) > 1:

    marker_data = []

    for i in range(len(marker_IDs)):
        center_x = int(np.mean(marker_corners[i][0][:, 0]))
        center_y = int(np.mean(marker_corners[i][0][:, 1]))

        marker_data.append((marker_IDs[i], (center_x, center_y)))

        cv.circle(frame, (center_x, center_y), 1, (0, 255, 0), -1)

    distances = []

    for i in range(len(marker_data)):
        for j in range(i + 1, len(marker_data)):
            cv.line(frame, marker_data[i][1], marker_data[j][1], (0, 0, 255), 2)

            distance = np.sqrt((marker_data[i][1][0] - marker_data[j][1][0])**2 + 
                               (marker_data[i][1][1] - marker_data[j][1][1])**2)

            distances.append((marker_data[i][0], marker_data[j][0], distance))

    frame_with_markers = aruco.drawDetectedMarkers(frame.copy(), marker_corners, marker_IDs)

    distances = sorted(distances, key=lambda i : i[2])

    # for ob in distances:
    #     print(ob[0][0], ob[1][0], ob[2])

    cv.putText(frame_with_markers, f"Shortest path is from {distances[0][0]} to {distances[0][1]}", (10, 30),
               cv.FONT_HERSHEY_SIMPLEX, 1, (255, 255, 255), 1, cv.LINE_AA)
            
    cv.imshow('Frame with Markers, Centers, and Lines', frame_with_markers)
    cv.waitKey(0)
    cv.destroyAllWindows()

else:
    print("No markers detected.")
    cv.waitKey(0)
    cv.destroyAllWindows()
