//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var j:Int = 0
var i:Int
for i=0;i<5;i++ {
    j = j+1
    print(j)
}

var button = UIButton()
button.setTitle("hello ", forState: .Normal)
button.backgroundColor = UIColor.redColor()
button.titleLabel!.textColor = UIColor.whiteColor()
button.frame = CGRectMake(0, 0, 200, 30)



