# This Python file uses the following encoding: utf-8
import unittest
import neurocv as ncc
import cv2

class Test(unittest.TestCase):
    ncc = None

    def setUp(self):
        self.ncc = ncc.Neros()

    def test_setSetting(self):
        self.ncc.setNeuroSetting(2, 2)
        expected = (2, 2)
        self.assertEqual(self.ncc.getNeuroSetting(), expected)

    def test_setCap(self):
        expected = cv2.imread("images/b1.jpg")
        self.ncc.setCap("images/b1.jpg", False)
        self.assertTrue((self.ncc.getCap() == expected).all())

if __name__ == "__main__":
    unittest.main()
