//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//选择排序 不断的在剩余元素中寻找最小的元素 排列到前面
//特性： 选择排序的运行时间 是 平方级别的

func selectSort(array: inout [Int]){
  let n = array.count
  var temp: Int
  for i in 0..<n{
    var min = i
    for j in i+1..<n{
      if array[j] < array[min]{
        min = j
      }
    }
    temp = array[min]
    array[min] = array[i]
    array[i] = temp
  }
}

//外循环从0开始 内循环找出最小的值 然后与外循环交换 比较N的二次方／2次 交换N次

//Demo
for i in stride(from: 3, through: 1, by: -1){
  print("即将产生长度为100的随机数组 \(i)s")
  Thread.sleep(forTimeInterval: 1)
}

var input = [Int]()
for _ in 1...100{
  input.append(Int(arc4random()) % 100)
}

print(input)
selectSort(array: &input)

print("经过插入排序的数组为")
print(input)