dict={"1":{"10号线":{"宋家庄":{"到家了"}}}}
name = input("请输入一个数")
if  name == "1":
    print(dict["1"])
    name = input("请输入一个数")
    if name =="10":
        print(dict["1"]["10号线"])
        name = input("请输入一个数")
        if name == "5":
            print(dict["1"]["10号线"]["宋家庄"])
        else:
            print("你搁这呆着吧")
    else:
        print("你输错了？")



else:
    print("你回不去了")
