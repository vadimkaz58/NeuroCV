# This Python file uses the following encoding: utf-8
import sys
import cv2
import numpy as np

class Neros:
    capc = None
    neuros = None
    isV = False
    scaleFactors = 1.008
    minNeighbor = 2
    img = None

    def __init__(self):
            self.capc = None
            self.neuros = None
            self.isV = False
            self.scaleFactors = 1.008
            self.minNeighbor = 4
            self.img = None

    def setCascad(self, cas):
        self.neuros = cv2.CascadeClassifier(cas)

    def getCascad(self):
        return self.neuros

    def setCap(self, src, isVideo):
        self.isV = isVideo
        if isVideo:
            self.capc = cv2.VideoCapture(src)
        else:
            self.capc = cv2.imread(src)

    def getCap(self):
        return self.capc

    def setNeuroSetting(self, scaleFa, minNe):
        self.scaleFactors = scaleFa
        self.minNeighbor = minNe

    def getNeuroSetting(self):
        return self.scaleFactors, self.minNeighbor

    def setNeouro(self, srcNeuro):
        self.neuro = cv2.CascadeClassifier(srcNeuro)

    def getImg(self):
        return self.img

    def videoTic(self):
        success, self.img = self.capc.read()
        self.img = cv2.resize(self.img, (800, 500))
        new_img = cv2.cvtColor(self.img, cv2.COLOR_BGR2GRAY)

        result = self.neuros.detectMultiScale(new_img, self.scaleFactors, self.minNeighbor)
        for (x,y,w,h) in result:
            cv2.putText(self.img, 'Birth', (x, y -10), cv2.FONT_HERSHEY_COMPLEX, 0.5, (150, 250, 250), 1)
            cv2.rectangle(self.img, (x,y), (x+w, y+h), (0, 0, 255), 3)
        return result

    def image(self):
        self.img = self.capc
        self.img = cv2.resize(self.img, (800, 500))
        new_img = cv2.cvtColor(self.img, cv2.COLOR_BGR2GRAY)
        result = self.neuros.detectMultiScale(new_img, self.scaleFactors, self.minNeighbor)
        for (x,y,w,h) in result:

            cv2.putText(self.img, 'Birth', (x, y -10), cv2.FONT_HERSHEY_COMPLEX, 0.5, (150, 250, 250), 1)
            cv2.rectangle(self.img, (x,y), (x+w, y+h), (0, 0, 255), 3)
        return result
