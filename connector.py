# This Python file uses the following encoding: utf-8
import pymysql as sql
import pymysql.cursors
from collections import defaultdict

class BDConnector:

    con = None
    src = defaultdict(list)
    cur = None

    def __init__(self):
        self.con = sql.connect(host='localhost', user='1', password='1', database='neros', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
        self.src = defaultdict(list)
        self.cur = self.con.cursor()
        pass
    def selectVideos(self):
        with self.con:
            self.cur.execute("SELECT S.path, S.name, N.path, S.id FROM source S, neuros N WHERE N.id = S.forNeuros and S.isVideo = 1")
            src = [[i for i in range(self.cur.rowcount)], [i for i in range(3)]]
            src = self.cur.fetchall()
            return src
    def selectImages(self):
        with self.con:
            self.cur.execute("SELECT S.path, S.name, N.path, S.id FROM source S, neuros N WHERE N.id = S.forNeuros and S.isVideo = 0")
            src = [[i for i in range(self.cur.rowcount)], [i for i in range(3)]]
            src = self.cur.fetchall()
            return src
    def insertResultsV(self, src, results, shot):
        connect = sql.connect(host='localhost', user='1', password='1', database='neros', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
        cus = connect.cursor()
        with connect:
            for (x,y,w,h) in results:
                sqll = "INSERT INTO `neros`.`results` (`x`, `y`, `h`, `w`, `src`, `shot`) VALUES (%s, %s, %s, %s, %s, %s)"
                cus.execute(sqll, (x, y, w, h, src, shot))
            connect.commit()
    def insertResultsI(self, src, results):
        connect = sql.connect(host='localhost', user='1', password='1', database='neros', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
        cus = connect.cursor()
        with connect:
            for (x,y,w,h) in results:
                sqll = "INSERT INTO `neros`.`results` (`x`, `y`, `h`, `w`, `src`) VALUES (%s, %s, %s, %s, %s)"
                cus.execute(sqll, (x, y, w, h, src))
            connect.commit()
