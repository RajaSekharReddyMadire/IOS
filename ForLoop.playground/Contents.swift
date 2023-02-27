import UIKit
import Foundation

var greeting = "Hello, playground"

var marks=45
if marks>50 {
    print("The student had passed with \(marks) marks")
}
else
{
    print("The student had passed with \(marks) marks")
}

var inputNumber = -10
if inputNumber==0 {
    print("\(inputNumber) is a positive number")
}
else if inputNumber>0 {
    print("\(inputNumber) is a negative number ")
}
else if inputNumber%2==0 {
    print("\(inputNumber) is a negtive even number")
}
else {
    print("not a number")
}

var password:String = "Raja@1090"
if password.count>8
{
    if password.contains(" "){
    print("Password should not contain space")
    }
    else {
        print("Password is strong")
    }
}
else {
    print("Password should contain min 8 characters")
}
    
let alphabet:Character = "a"

switch alphabet {
    case "a","A":
        print("It is an alphabet a or A")
    case "b":
        print("it is a lower alphabet b")
    default:
        print("None of them")
            
}

let isVowel:Character="B"
switch isVowel {
    case "a","e","i","o","u":
        print("The alphabet is a lower case vowel")
    case "A","E","I","O","U":
        print("the alphabet is a upper case vowel")
    default:
        print("It is not a vowel")
}

var number : Int = 5
for i in number{
    print("\(i)*\(number)")
}
let date = Date()
let calender = Calendar.current
let year = calender.component(.year, from: date)
print(year)
