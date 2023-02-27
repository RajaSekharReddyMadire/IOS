import UIKit

var greeting = "Hello, playground"

var str1 = "I am practicing the worksheet"
var str2 = "Development of swift began in 2010"
var str3 = "We are going to use the swift language in todays class"

str1.count
str1 += " , and then complete the assignment"
print(str1)

str2.append(" by Apple")
print(str2)
str3.lowercased()
str3.uppercased()
str3[str3.startIndex]
str3[str3.index(before: str3.endIndex)]
str2[str2.index(after: str2.startIndex)]
str3[str3.index(str3.startIndex,offsetBy: 3)]
str3[str3.index(str3.endIndex,offsetBy: -3)]

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if(clothes.hasPrefix("Socks")){
    print("The first item in clothes is socks")
}
else{
    print("Socks is not the first item in the clothes")
}

print(foodItems.split(separator: ","))
if(clothes.contains(",")){
    print("Clothes contains more than one item")
}
else{
    print("Clothes contains one item")
}

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]

shoppingList+=foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex]
