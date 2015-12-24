//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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


// 元组分解
let (eName, eId) = employee;
eName;
eId;


// 如果只需要元组中的个别值, 可以使用" _ "来忽略不需要的值
let (justNeedName, _) = employee;
justNeedName;


