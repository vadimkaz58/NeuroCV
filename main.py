# This Python file uses the following encoding: utf-8
import sys
import cv2
import numpy as np
import neurocv as ncc
import connector as cn

cnn = cn.BDConnector()
cnn.selectVideos()
src = cnn.getSrc()
print(src[0]['name'])

srcc = None
j = 0;
menu = np.zeros((500, 500), dtype='uint8')
while True:
    try:
        for i in range(10):
            s = str(i)
            if i > 5:
                cv2.putText(menu, s + " - " + src[i+j]['name'], (50, 25+25*(i-5)), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
            elif i == 10:
                cv2.putText(menu, '9 - ' + src[i+j+1]["name"], (50, 25+25*(i-4)), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
                cv2.putText(menu, '- - Далее', (100, 25+25*i), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
                cv2.putText(menu, '= - Назад', (100, 50+25*i), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
            else:
                cv2.putText(menu, s + " - " + src[i+j]['name'], (10, 25+25*i), cv2.FONT_HERSHEY_COMPLEX, 1, (255,255,255), 1)
    except Exception:
        print("s")
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
        j += 10
    elif pr & 0xFF == ord('='):
        j -= 10
nc = ncc.Neros()
nc.setCap("videos/" + src[srcc]['path'], True)
nc.setCascad("cascade/" + src[srcc]['N.path'])
while True:
    nc.videoTic()
    cv2.imshow(src[srcc]['name'], nc.getImg());
    cv2.waitKey(2)

