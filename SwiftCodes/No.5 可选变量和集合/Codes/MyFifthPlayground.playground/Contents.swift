//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 可选变量 Optional

// 表示此变量的值可能为空, 用于不确定能不能有值得情景
var optInt : Int?;

var possibleStr1 : String = "1234";
optInt = Int(possibleStr1);

var possibleStr2 : String = "1234f";
optInt = Int(possibleStr2);


// 集合

// 创建一个不可变集合 <>可以省略, 系统会根据内容指定类型
let nameList : Set <String> = ["Jack", "Pony", "Robin"];

// 创建一个可变集合
var musicStyle : Set <String> = ["Rock", "Classical", "HipHop"];


// 创建一个空集合
var letters = Set <Character> ();

// 判断集合是否为空
if letters.isEmpty
{
    // 同样的也可以使用count属性是否为0来判断集合是否为空
    letters.count;
}


// 集合的增删查

// 增加一个元素
letters.insert("a");
letters.insert("b");
letters.insert("c");
letters.insert("d");

// 移除一个元素
letters.removeFirst();

// 可以使用contains方法检查集合中是否包含一个特定的值
if letters.contains("a")
{
    print("letters set has a");
}


// 遍历集合
for char in letters
{
    print(char);
}

// 集合排序
for char in letters.sort()
{
    print(char);
}


// 集合操作

let manList : Set <String> = ["Jack", "Pony", "Robin", "Sun"];
let oldManList : Set <String> = ["Jack", "Pony", "Robin", "Charles"];

// 使用intersect方法根据两个集合中都包含的值创建一个新的集合
manList.intersect(oldManList);

// 使用exclusiveOr方法根据阿紫一个集合中但不在两个集合中创建一个新的集合
manList.exclusiveOr(oldManList);

// 使用union方法根据两个集合的值创建一个新的集合
manList.union(oldManList);

// 使用subtract方法根据不在该集合中的值创建一个新的集合
manList.subtract(oldManList);


// 集合成员关系

let oddDigits: Set = [1, 3, 5, 7, 9];
let evenDigits: Set = [0, 2, 4, 6, 8];
let allNumbers: Set = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

// 使用" == "来判断两个集合是否包含全部相同的值
oddDigits == evenDigits;

// 使用isSubsetOf方法来判断一个集合中的值是否也被包含在另外一个集合中
oddDigits.isSubsetOf(allNumbers);

// 使用isSupersetOf方法来判断一个集合中包含另一个集合中所有的值
oddDigits.isSubsetOf(allNumbers);

// 使用isStrictSubsetOf或者isStrictSupersetOf方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等
oddDigits.isStrictSubsetOf(allNumbers);
allNumbers.isStrictSupersetOf(oddDigits);

// 使用isDisjointWith方法来判断两个集合是否不含有相同的值
oddDigits.isDisjointWith(evenDigits);













