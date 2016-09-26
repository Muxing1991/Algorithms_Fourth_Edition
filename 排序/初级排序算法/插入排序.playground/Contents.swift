//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//插入排序 也是平凡级别 但是比选择排序快 对于有序的 会快的多 而
//选择排序 对于有序的 也是一样的无脑选择最小的
//有点像 冒泡排序


func insertSort(array: inout [Int]){
  let n = array.count
  var temp: Int
//MODE 1
//  for i in 1..<n{
//    for j in (1...i).reversed(){
//      if array[j] < array[j-1]{
//        temp = array[j]
//        array[j] = array[j-1]
//        array[j-1] = temp
//      } else {
//        //因为 左边都是有序的 如果 不小于左边了 就打住
//        break
//      }
//    }
//  }
  
//MODE2 while 写法
//  for i in 1..<n{
//    let value = array[i]
//    var j = i - 1
//    while j >= 0 && array[j] > value{
//      array[j+1] = array[j]
//      j -= 1
//    }
//    array[j + 1] = value
//  }
  
//MODE3  //记录应该插入的位置 而在外循环插入 这样免去了一直的插入
  for i in 0..<n{
    let value = array[i]
    var target = i
    for j in (0..<i).reversed(){
      if array[j] > value{
        array[j+1] = array[j]
        target = j
      }
    }
    array[target] = value
  }

}
//区间可以简单的使用reversed()方法 来倒序
//外循环从1开始 内循环遍历之前的元素


//Demo
for i in stride(from: 3, through: 1, by: -1){
  print("即将产生长度为100的随机数组 \(i)s")
  Thread.sleep(forTimeInterval: 1)
}

var input = [Int]()
for _ in 1...10{
  input.append(Int(arc4random()) % 100)
}

print(input)
insertSort(array: &input)

print("经过插入排序的数组为")
print(input)
