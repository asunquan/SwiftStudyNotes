//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// ----------枚举-------------

// 使用enum关键字来定义一个枚举, 其中每一个case为一个成员
enum Direction
{
    case North;
    case South;
    case West;
    case East;
}


// 多个成员也可以写在一个case里用" , "隔开
enum WeekDay
{
    case Monday, Tuesday, Wednesday, Thursday, Friday;
}


// 声明和使用, 一旦类型被指定就可以使用" . "操作
var day1 : WeekDay;
day1 = .Monday;
var day5 : WeekDay = .Friday;


// Swift中枚举类型可以给成员设定指定值
enum Number : Int
{
    case hundred = 100;
    case thousand = 1000;
    case million = 1000000;
}

// 使用rawValue获取初值
var num = Number.hundred.rawValue;


// Swift的枚举类型可以由一些数据类型组成, 这些数据类型可以说各不相同
enum Bill
{
    case Day(Int, WeekDay);
    case Amount(Float);
}

// 可以使用任何一种类型来创建
var todayBill : Bill = Bill.Day(20151224, .Thursday);
todayBill = .Amount(100);


// ----------元组-------------

// 元组 数据库里的概念, 相当于一条数据, 可以通过下标取值
let employee : (String, String) = ("小明", "CY111111");
employee.0;
employee.1;

// manager相当于表名, name, id相当于列名, 对应着数据库中的一条数据
let manager : (name : String, id : String) = (name : "小韬", id : "CY000001");
manager.name;
manager.0;
manager.id;
manager.1;


// 在创建元组的时候也可以直接指定每个元素的名称, 然后直接使用元组名" . "元素名访问
let leader = (name : "Jack", id : "CY000111");
leader.name;
leader.id;


// 元组分解
let (eName, eId) = employee;
eName;
eId;


// 如果只需要元组中的个别值, 可以使用" _ "来忽略不需要的值
let (justNeedName, _) = employee;
justNeedName;


// ----------数组-------------

// 声明一个可变的数组使用"var"关键字
var shoppingList = ["catfish", "water", "tulips"];

// 声明一个不可变的数组使用"let"关键字
let nameList = ["Kobe", "Yao", "McGrady", "Iverson", "Nash"];


// 创建一个空数组
var emptyArr = [String]();

// 如果不需要指定类型, 可以直接用[]
var sEmptyArr = [];


// 数组中每一项若不是同一类型, 将自动转换为Objective-C中的数组
var arr = ["name", 1];


// 判断数组是否为空使用isEmpty
if !shoppingList.isEmpty
{
    // count可以求得数组重元素的个数
    shoppingList.count;
}


// 可变数组里添加一个元素
shoppingList.append("iPhone");

// 也可以通过" + "添加一个数组
shoppingList += ["iPad"];
// 这种写法 shoppingList += "acer"; 已经被干掉了

// 在可变数组的指定位置插入一个元素
shoppingList.insert("chicken", atIndex: 0);

// 修改可变数组中的第几个元素
shoppingList[2] = "cola"
print(shoppingList);

// 删除数组中某个元素
shoppingList.removeAtIndex(3);
print(shoppingList);


// 遍历数组
for good in shoppingList
{
    print(good);
}

// 遍历数组时获取元素对应的下标
for (gIndex, good) in EnumerateSequence(shoppingList)
{
    print(gIndex);
    print(good);
}


// 获取数组中多个元素
// 0..<2 表示一个区间[0, 2)
shoppingList[0..<2];

// 0...2 表示 [0, 2]
shoppingList[0...2];


// ----------字典-------------

// 声明一个可变的字典使用"var"关键字
var varDic = ["name" : "bread", "price" : "10.00元"];
// 系统会自动推断为以下形式
//var varDic : Dictionary<String, String> = ["name" : "bread", "price" : "10.00元"];

// 声明一个不可变的字典使用"let"关键字
let immDic = ["city" : "Beijing", "country" : "China"];


// 声明一个空字典
var emptyDic = Dictionary<String, Int>();

// 判断字典是否为空可以使用isEmpty
if !immDic.isEmpty
{
    // count可以求得字典中键值对的个数
    immDic.count;
}


// 如果不使用< , >的形式来定义字典的key和value的类型, 字典中键值对的类型是可以不相同的
var dic : Dictionary = ["name" : "Jack", "phone" : 925196];

// 通过key取value可以使用indexForKey方法和["key"]方法
var dicIndex = dic.indexForKey("name");
dic[dicIndex!];
dic["name"];


// 在字典中添加键值对
dic.updateValue("8442", forKey: "WX");
dic;

// 删除
dic .removeValueForKey("WX");
// 也可以使用将key的value置为nil的形式来移除键值对
dic["WX"] = nil;
dic;

// 修改
dic["name"] = "Cook";
dic;
// 字典中如果没有这个key系统会自动添加key和value.
dic["WX"] = "8442";
dic


// 遍历字典
for (key, value) in dic
{
    print(key);
    print(value);
}

// 遍历字典中的所有key
for dicStr in dic.keys
{
    print(dicStr);
}

// 遍历字典中的所有value
for dicStr in dic.values
{
    print(dicStr);
}





















