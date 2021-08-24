from threading import Thread
import time
# import threading

docker = 1
money = 3000
# lock = threading.Lock()

while docker <= 50:

    class food(Thread):
        cook = ""
        bread = 0

        def run(self) -> None:
            global docker
            global money
            # lock.acquire()
            while True:
                if docker < 50 and docker > 0:
                    docker = docker + 1
                    self.bread = 1
                    print(self.cook, "做了", self.bread, "个面包", "现在篮子里还剩", docker, "个面包")
                elif docker > 50:
                    time.sleep(2)
                    # lock.release()


    class People(Thread):
        username = ""
        much = 0

        def run(self) -> None:
            global docker
            global money
            # lock.acquire()
            while True:
                if docker > 0:
                    docker = docker - 1
                    money = money - 3
                    self.much = self.much + 1
                    print(self.username, "买了", self.much, "个面包，篮子里还剩", docker, "个")

                elif docker == 0:
                    time.sleep(5)
                    # lock.release()


    docker = docker + 1

    a1 = food()
    a2 = food()
    a3 = food()
    a1.cook = "杰瑞"
    a2.cook = "米奇"
    a3.cook = "跳跳虎"
    a1.start()
    a2.start()
    a3.start()
    b1 = People()
    b2 = People()
    b3 = People()
    b4 = People()
    b5 = People()
    b6 = People()
    b1.username = "tom"
    b2.username = "大雄"
    b3.username = "胖虎"
    b4.username = "小新"
    b5.username = "海绵宝宝"
    b6.username = "派大星"
    b1.start()
    b2.start()
    b3.start()
    b4.start()
    b5.start()
    b6.start()
