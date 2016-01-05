//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// for - in 循环

for i in 1...9
{
    for j in 1...9
    {
        if j <= i
        {
            print("\(j) * \(i) = \(j * i)", terminator:" ");
        }
        else
        {
            break;
        }
    }
    print("");
}

// 如果不需要知道区间序列内每一项的值, 可以使用" _ "替代变量名来忽略对值的访问
let base = 2;
let power = 10;
var answer = 1;

for _ in 1...power
{
    answer *= base;
}
answer;

// 遍历一个字典
let info = ["Jack" : 51, "Pony" : 44, "Robin" : 47];

for (name, age) in info
{
    print("\(name) is \(age) years old");
}


// for循环

for var i = 1; i < 10; i++
{
    for var j = 1; j <= i; j++
    {
        print("\(j) * \(i) = \(j * i)", terminator:" ");
    }
    print("");
}


// while循环

var i = 1;
var j = 1;

while i < 10
{
    while j < i + 1
    {
        print("\(j) * \(i) = \(j * i)", terminator:" ");
        j++;
    }
    print("");
    i++;
    j = 1;
}


// repeat - while

i = 1;
j = 1;
repeat
{
    repeat
    {
        print("\(j) * \(i) = \(j * i)", terminator:" ");
        j++;
    } while j < i + 1;
    print("");
    i++;
    j = 1;
} while i < 10;


// if

var PM = 300;

if PM >= 200
{
    print("this is Beijing");
}


// if - else

var salary = 10000;

if salary < 15000
{
    print("go die");
}
else
{
    print("maybe have a longer time before going die");
}


// if - else if

salary = 18000

if salary < 15000
{
   print("go die");
}
else if salary > 15000 && salary < 20000
{
    print("will go die");
}
else
{
    print("maybe able to sustain life");
}


// switch

// case分支中的代码执行完毕后, 程序会终止switch语句, 而不会继续执行下一个case分支
// 虽然在Swift中break不是必须得, 但依然可以使用break跳出分支
// 每一个case分支都必须包含至少一条语句, 因为在Swift中, switch语句不会同时匹配两个case

let someCharacter : Character = "e";

switch someCharacter
{
case "a", "e", "i", "o", "u" :
    print("\(someCharacter) is a vowel");
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q","r", "s", "t", "v", "w", "x", "y", "z" :
    print("\(someCharacter) is a consonant");
default :
    print("\(someCharacter) is not a vowel or a consonant");
}


// case分支的模式可以是一个值的区间

let approximateCount = 62;
let countedThings = "moons orbiting Saturn";
var naturalCount : String;

switch approximateCount
{
case 0 :
    naturalCount = "no";
case 1..<5 :
    naturalCount = "a few";
case 5..<12 :
    naturalCount = "several";
case 12..<100 :
    naturalCount = "dozens of";
case 100..<1000 :
    naturalCount = "hundreds of";
default :
    naturalCount = "many";
}

print("There are \(naturalCount) \(countedThings)");


// 可以使用元组在同一个switch语句中测试多个值, 元组中的元素可以是值, 可以是区间, 也可以使用" _ "来匹配所有可能的值
// swift允许多个case匹配同一个值, 但如果存在多个匹配, 只会执行第一个被匹配的case分支

let somePoint = (0, 0);

switch somePoint
{
case (0, 0) :
    print("(\(somePoint.0), \(somePoint.1)) is at the origin");
case (_, 0) :
    print("(\(somePoint.0), \(somePoint.1)) is on the x-axis");
case (0, _) :
    print("(\(somePoint.0), \(somePoint.1)) is on the y-axis");
case (-2...2, -2...2) :
    print("(\(somePoint.0), \(somePoint.1)) is inside the box");
default :
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box");
}


// case分支的模式允许将匹配的值绑定到一个临时的常量或变量

let anotherPoint = (2, 0);

switch anotherPoint
{
case (let x, 0) :
    print("on the x-axis with an x value of \(x)");
case (0, let y) :
    print("on the y-axis with a y value of \(y)");
case let (x, y) :
    print("somewhere else at (\(x), \(y))");
}


// case分支的模式可以使用where语句来判断额外的条件

let yetAnotherPoint = (1, -1);

switch yetAnotherPoint
{
case let (x, y) where x == y :
    print("(\(x), \(y)) is on the line x == y");
case let (x, y) where x == -y :
    print("(\(x), \(y)) is on the line x == -y");
case let (x, y) :
    print("(\(x), \(y)) is just some arbitrary point");
}



// 控制转移语句
// 改变代码的执行顺序, 实现代码的跳转


// continue
// continue语句告诉一个循环立刻停止本次循环迭代, 重新开始下次循环迭代

let puzzleInput = "great minds think alike";
var puzzleOutput = "";

for character in puzzleInput.characters
{
    switch character
    {
    case "a", "e", "i", "o", "u", " " :
        continue;
    default :
        puzzleOutput.append(character);
    }
}

print(puzzleOutput);


// break
// break语句会立刻结束整个控制流的执行
// 当在一个循环体中使用break时, 会立刻中断该循环体的执行, 然后跳转到表示循环体结束的大括号的第一行代码, 不会再有本次循环迭代的代码被执行, 也不会再有下次的循环迭代产生
// 当在switch中使用break时, 会立刻中断该switch代码块的执行, 并且跳转到表示switch代码结束的大括号后的第一行代码
// 这种特性可以被用来匹配或者忽略一个或多个分支, 在Swift中switch需要包含所有的分支而且不允许有为空的分支, 有时为了使意图更明显, 需要特意匹配或者忽略某个分支

let numberSymbol : Character = "三";
var possibleIntegerValue : Int?;

switch numberSymbol
{
case "1", "一" :
    possibleIntegerValue = 1;
case "2", "二" :
    possibleIntegerValue = 2;
case "3", "三" :
    possibleIntegerValue = 3;
case "4", "四" :
    possibleIntegerValue = 4;
case "5", "五" :
    possibleIntegerValue = 5;
case "6", "六" :
    possibleIntegerValue = 6;
case "7", "七" :
    possibleIntegerValue = 7;
case "8", "八" :
    possibleIntegerValue = 8;
case "9", "九" :
    possibleIntegerValue = 9;
case "0", "零" :
    possibleIntegerValue = 0;
default :
    break;
}

if let integerValue = possibleIntegerValue
{
    print("The integer value of \(numberSymbol) is \(integerValue).");
}
else
{
    print("An integer value could not be found for \(numberSymbol).");
}


// fallthrough
// fallthrough简单的使代码执行继续连接到下一个case中的执行代码

let integerToDescribe = 5;
var description = "The number \(integerToDescribe) is ";

switch integerToDescribe
{
case 2, 3, 5, 7, 11, 13, 17, 19 :
    description += "a prime number, and also";
    fallthrough;
default :
    description += "an integer.";
}

print(description);


// 带标签的语句
// 可以显示的指明需要break/continue的是哪个循环体或switch代码块
var whileCondition = 0;
var switchCondition = 0;

whileLoop : while whileCondition < 5
{
    whileCondition++;
    print("\(whileCondition + switchCondition)");
    switch whileCondition + switchCondition
    {
    case 1 :
        continue whileLoop;
    case 3 :
        break whileLoop;
    default :
        print("default");
    }
}


// guard 提前退出
// 可以使用guard语句来要求条件必须为真时, 以执行guard语句后的代码
// 不同于if语句, guard语句子那个是有一个else分支, 如果条件不为真则执行else中的代码
// 如果guard语句的条件被满足, 则在保护语句的封闭大括号结束后继续执行代码

func greet(person : [String : String])
{
    guard let name = person["name"] else
    {
        return;
    }
    print("Hello \(name)");
    
    guard let location = person["location"] else
    {
        print("I hope the weather is nice near you.");
        return;
    }
    print("I hope the weather is nice in \(location)");
}

greet(["name" : "John"]);
greet(["name" : "Jane", "location" : "Hawaii"]);



// 检测API可用性
// if判断系统版本达到判断条件则执行if段的代码

if #available(iOS 9, *)
{
    print("iOS 9 : \(UIDevice.currentDevice().systemVersion)");
}
else
{
    print(UIDevice.currentDevice().systemVersion);
}




















