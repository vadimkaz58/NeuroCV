# This Python file uses the following encoding: utf-8
import pymysql as sql
import pymysql.cursors
from collections import defaultdict

class BDConnector:

    con = None
    src = defaultdict(list)

    def __init__(self):
        self.con = sql.connect(host='localhost', user='1', password='1', database='neros', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)
        self.src = defaultdict(list)
        pass
    def selectVideos(self):
        with self.con:
            cur = self.con.cursor()
            cur.execute("SELECT S.path, S.name, N.path FROM source S, neuros N WHERE N.id = S.forNeuros and S.isVideo = 1")
            self.src = [[i for i in range(cur.rowcount)], [i for i in range(3)]]
            self.src = cur.fetchall()
            i = 0
    def getSrc(self):
        return self.src
