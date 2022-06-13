# This Python file uses the following encoding: utf-8
import sys
import cv2
import numpy as np
import neurocv as ncc
import connector as cn

cnn = cn.BDConnector()
isVideo = False
menu = np.zeros((500, 500), dtype='uint8')
while True:
    cv2.putText(menu, "1 - Image", (50, 25), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
    cv2.putText(menu, "2 - Video", (50, 50), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
    pr = cv2.waitKey(0)
    cv2.imshow("Menu", menu)
    if pr & 0xFF == ord('1'):
        isVideo = False
        break
    elif pr & 0xFF == ord('2'):
        isVideo = True
        break
if isVideo:
    src = cnn.selectVideos()
else:
    src = cnn.selectImages()

srcc = None
j = 0;
menu = np.zeros((500, 500), dtype='uint8')
while True:
    try:
        cv2.putText(menu, '- - Следующие', (10, 30), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
        cv2.putText(menu, '= - Предыдущие', (10, 60), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
        for i in range(10):
            s = str(i)
            cv2.putText(menu, s + " - " + src[i+j]['name'], (10, 90+30*i), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
    except Exception:
        print("< 10")
    cv2.imshow("Menu", menu)
    pr = cv2.waitKey(0)
    if pr & 0xFF == ord('0'):
        srcc = 0+j
        break
    elif pr & 0xFF == ord('1'):
        srcc = 1+j
        break
    elif pr & 0xFF == ord('2'):
        srcc = 2+j
        break
    elif pr & 0xFF == ord('3'):
        srcc = 3+j
        break
    elif pr & 0xFF == ord('4'):
        srcc = 4+j
        break
    elif pr & 0xFF == ord('5'):
        srcc = 5+j
        break
    elif pr & 0xFF == ord('6'):
        srcc = 6+j
        break
    elif pr & 0xFF == ord('7'):
        srcc = 7+j
        break
    elif pr & 0xFF == ord('8'):
        srcc = 8+j
        break
    elif pr & 0xFF == ord('9'):
        srcc = 9+j
        break
    elif pr & 0xFF == ord('-'):
        menu = np.zeros((500, 500), dtype='uint8')
        j += 10
    elif pr & 0xFF == ord('='):
        menu = np.zeros((500, 500), dtype='uint8')
        if j >= 10:
            j -= 10
nc = ncc.Neros()
nc.setCascad("cascade/" + src[srcc]['N.path'])
if isVideo:
    pause = False
    nc.setCap("videos/" + src[srcc]['path'], True)
    shot = 1
    while True:
        cnn.insertResultsV(src[srcc]['id'], nc.videoTic(), shot)
        cv2.imshow(src[srcc]['name'], nc.getImg())
        keyPress = 0
        if pause:
            keyPress = cv2.waitKey(0)
        else:
            keyPress = cv2.waitKey(2)
        if keyPress & 0xFF == ord('p'):
            if pause:
                pause = False
            else:
                pause = True
        elif keyPress & 0xFF == ord('o'):
            nc.setNeuroSetting(nc.getNeuroSetting()[0] + 0.001,nc.getNeuroSetting()[1])
        elif keyPress & 0xFF == ord('i'):
            nc.setNeuroSetting(nc.getNeuroSetting()[0] - 0.001,nc.getNeuroSetting()[1])
        elif keyPress & 0xFF == ord('u'):
            nc.setNeuroSetting(nc.getNeuroSetting()[0],nc.getNeuroSetting()[1] + 1)
        elif keyPress & 0xFF == ord('y'):
            nc.setNeuroSetting(nc.getNeuroSetting()[0],nc.getNeuroSetting()[1] - 1)
        print(nc.getNeuroSetting())
        shot += 1
else:
    nc.setNeuroSetting(1.008, 4)
    nc.setCap("images/" + src[srcc]['path'], False)
    cnn.insertResultsI(src[srcc]['id'], nc.image())
    cv2.imshow(src[srcc]['name'], nc.getImg());
    cv2.waitKey(0)
