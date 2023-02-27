import UIKit
import Darwin

var greeting = "Hello, playground"

func greetUser(){
    print("Welcome user")
}
print(greetUser())

func sayHello()->String{
    var name="Swift"
    return "Hello "+name+"!"
    
}
print(sayHello())

func favouriteProgram(name:String)->String{
    var name="My favourite programming language is \(name)"
    return name
}
print(favouriteProgram(name:"Java"))

func addNumbers(number1:Int,number2:Int)->Int{
    return number1+number2
}
print("The sum of given numbers is \(addNumbers(number1: 10, number2: 5))")

func manipulateNumber(input: Int,mode:Bool)->String{
    var counter = input
    if(mode){
        counter+=2
    }
    else{
        counter-=1
    }
    return "The \(mode ? "incremented" : "decremented") value is \(counter)"
}
    
    var val=19
    print(manipulateNumber(input: val, mode: false))

func login(sid username:String, password:String)->Bool{
    if(username=="Swift5.5" && password=="uikit")
    {
        return true
    }
    return false;
}
var loggedIn:Bool=login(sid: "Swift5.5",password:"uikit")
if(loggedIn){
    print("user login success")
    
}
else{
    print("username or password is incorrect")
}

func fullName(_ firstName:String,_ lastName:String)->String{
    return lastName+","+firstName
}
print(fullName("Raja", "Madire"))

func sumAndAvg(_ numbers:Double...)->(sum:Double,avg:Double){
    var total:Double=0
    var avg:Double
    
    for number in numbers{
        total+=number
    }
    avg=total/Double(numbers.count)
    
    return (total,avg)
}
let result = sumAndAvg(1,20,4.9,5,22)
print("Sum =\(result.sum)")
print("Avg =\(result.avg)")
