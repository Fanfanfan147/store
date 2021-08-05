import random
list =["普通","传奇","精英"]
name=(list[random.randint(0,(len(list)-1))])
print(name)
num = 50
if name == "普通" :
     while True:
        i = 0
        list2 =[]
        while i<3:
            i = i+1
            a = random.randint(0,50)
            list2.append(a)
        print(list2)
        num1 = list2[random.randint(0, len(list2) - 1)]
        print(num1)
        list3=[1,2]
        name2 = list3[random.randint(0, len(list3) - 1)]
        if name2 ==1:
            num = num1 + num
            print(num)
        elif name2 ==2:
            num = num - num1
        if num >100:
            print("完成任务你的得分为",num)
            break
        elif num <=0:
            print("任务失败，您的得分为",num)
            break
if name == "传奇":
    num = 80
    while True:
        i = 0
        list4 = []
        while i < 3:
            i = i + 1
            b = random.randint(0, 50)
            list4.append(b)
        num2 = list4[random.randint(0, len(list4) - 1)]
        print(list4)
        print(num2)
        list5 = [1, 2]
        name3 = list5[random.randint(0, len(list5) - 1)]
        if name3 == 1:
            num3 = num2 + num
            print(num)
        elif name3 == 2:
            num3 = num - num2
        if num3 > 100:
            print("完成任务你的得分为", num3)
            break
        elif num3 <= 0:
            print("任务失败，您的得分为", num3)
            break
if name == ("精英"):
    while True:
        i = 0
        list6=[]
        while i < 3:
            i = i + 1
            c = random.randint(0,50)
            list6.append(c)
        num7=list6[random.randint(0,len(list6) -1)]
        print(num7)
        name6 = num7 + num
        if name6 >100:
            print("任务完成，最后得分",name6)
        else:
            print("任务结束，最后得分",name6)
        break




        #if name == "稀有":
         #   print(name1)
         #   num1 = 30 + num
         #   a = num1  + name1
          #  print(a)
          #  if a > 100:
           #     print("任务完成您的得分为",a)
           # else:
            #    print("任务失败您的得分为",a)
           # break


