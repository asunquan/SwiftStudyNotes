//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 常量和变量的定义可以不写数据类型, 系统会根据其赋值自动推荐其类型

// 定义常量

// autoInteger未指定数据类型会自动根据"10"识别为Int类型
let autoInt = 10;

// 指定manualInt的数据类型为Int
let manualInt : Int = 10;


// 定义变量

var autoDouble = 11.0;

var manualDouble : Double = 11.0;


// Swift不支持隐式转换 必须显示转换类型

var change = (Double)(autoInt) + autoDouble


// Swift命名几乎支持所有Unicode编码

/*
  注意以下几点:
  1. 不能使用系统保留字, 如果一定要使用保留字, 可加`保留字`命名
  2. 不能以数字开头
  3. 不能使用数字符号命名
  4. 不能使用横线箭头命名
*/

let `Int` = 1

var 哈哈 = "呵呵"

var 🌍 = "💗"

var short : Int8 = 4

var xx : Int16 = 66


// Swift中可以使用"+"拼接字符串

🌍 += 哈哈


// 在Swift2.0中, println()和print()被合并为一个print()

/* Swift1.2中输出语句:
   func print(<stuff to print>)
   func println(<stuff to print>)
*/

/* Swift2.0
   func print(<stuff to print>, appendNewline : Bool = true)
*/

// 所以之前的println方法都会报错
print(🌍);


// 初始化一个空字符串
let emptyStr : String = "";

// 可以使用isEmpty来判断字符串是否为空
if emptyStr.isEmpty
{
    print("this is an empty string");
}


// Swift中单个字符的声明使用Character
let singleChar : Character = "a";


// 也可以同过for-in 遍历字符串中的每一个字符
let everyStr = "thirdPlayground";
for cha in everyStr.characters
{
    print(cha);
}


// 判断字符串长度使用.characters.count, 表示计算一个字符串中字符的数量
let lengthStr = "SunQuan, SunQuan!";
print(lengthStr.characters.count);


// 字符串的比较使用 "=="
let compareA = "HeHeAHeHe";
let compareB = "heheahehe";

if compareA == compareB
{
    print("compareA is same to compareB");
}
else
{
    print("compareA is different from compareB");
}


// 字符串的前后缀
if compareA.hasPrefix("HeHe")
{
    print("compareA hasPrefix HeHe");
}

if compareB.hasSuffix("hehe")
{
    print("compareB hasSuffix hehe");
}


// 将字符串中小写字母转为大写
print(compareA.uppercaseString);

// 将字符串中大写字母转为小写
print(compareB.lowercaseString);


// 类型别名为现有类型的替代名称, 使用typealias关键字来声明
typealias ClassSample = String;
var sampleStr : ClassSample = "classSample";


// 定义Bool类型
let trueStroy = true;
let falseStroy = false;


