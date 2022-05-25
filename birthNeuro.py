# This Python file uses the following encoding: utf-8
import sys
import cv2
import numpy as np

cap = cv2.VideoCapture("videos/v2.mp4")
birth = cv2.CascadeClassifier('cascade_226.xml')
while True:
    success, img = cap.read()
    if success:
        new_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

        result = birth.detectMultiScale(new_img, scaleFactor=1.008, minNeighbors=4)
        for (x,y,w,h) in result:
            cv2.putText(img, 'Birth', (x, y -10), cv2.FONT_HERSHEY_COMPLEX, 0.5, (150, 250, 250), 1)
            cv2.rectangle(img, (x,y), (x+w, y+h), (0, 0, 255), 3)

        cv2.imshow('Result', img)
        press = cv2.waitKey(1)
        if press & 0xFF == ord('q'):
            break
        elif press & 0xFF == ord('p'):
            cv2.waitKey(0)
    else:
        break
