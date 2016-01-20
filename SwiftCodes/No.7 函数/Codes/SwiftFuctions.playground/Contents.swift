//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 函数的定义与调用

// 用 func 作为函数定义的前缀
// 用 -> 后跟返回类型的名称的方式来表示函数返回值
func sayHello(name : String) -> String
{
    let greeting = "hello, " + name + "!";
    return greeting;
}

sayHello("Jack");


// 简化直接返回
func sayHelloAgain(name : String) -> String
{
    return "hello again, " + name + "!";
}

sayHello("Mark");


// 无参函数
// 用 () 表示
func sayHelloWorld() -> String
{
    return "hello world";
}

sayHelloWorld();


// 多参函数
// 函数可以由多个参数, 这些参数被包含在函数的()滞洪, 以逗号分隔
func sayHello(name : String, greeted : Bool) -> String
{
    if greeted
    {
        return sayHelloAgain(name);
    }
    else
    {
        return sayHello(name);
    }
}

sayHello("Jack", greeted: true);


// 无返回值函数
// 函数可以没有返回值, 没有 -> 和返回类型
// 严格上来说, 虽然没有返回值被定义, 但是函数依然返回了值. 没有定义返回类型的函数会返回特殊的值void. 它其实是一个空的元组, 没有任何元素, 可以写成()
func sayGoodBye(name : String)
{
    print("GoodBye, \(name)!");
}

sayGoodBye("teacher");


// 多重返回值函数
func minMax(array : [Int]) -> (min : Int, max : Int)
{
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count]
    {
        if value < currentMin
        {
            currentMin = value;
        }
        else if value > currentMax
        {
            currentMax = value;
        }
    }
    return (currentMin, currentMax);
}

let bounds = minMax([8, -6, 2, 109, 3, 71]);
bounds.min
bounds.max


// 可选元组返回类型
// 如果函数返回的元组类型有可能整个元组都没有值, 可以使用可选的元组返回类型反映整个元组可以是nil的事实. 可以通过在元组类型后放置一个问号来定义一个可选元组
// 可选元组(Int, Int)?与元组包含可选类型(Int?, Int?)是不同的. 可选元组整个元组是可选的, 而不只是元组中的每个元素值.
func eMinMax(array : [Int]) -> (min : Int, max : Int)?
{
    if array.isEmpty
    {
        return nil;
    }
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1..<array.count]
    {
        if value < currentMin
        {
            currentMin = value;
        }
        else if value > currentMax
        {
            currentMax = value;
        }
    }
    return (currentMin, currentMax);
}

let array = [Int]();
let bound = eMinMax(array);


// 函数参数名称
// 函数参数都有一个外部参数名和一个局部参数名, 外部参数名用于在函数调用时标注传递给函数的参数, 局部参数名在函数的实现内部使用
// 一般情况下, 第一个参数省略其外部参数名, 第二个以及随后的参数使用其局部参数名作为外部参数名, 所有参数必须有独一无二的局部参数名. 尽管多个参数可以有相同的外部参数名, 但不同的外部参数名能使代码更有可读性


// 指定外部参数名
func someFunction()























