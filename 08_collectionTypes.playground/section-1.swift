// Playground - noun: a place where people can play

import Cocoa

// array
var shoppinglist: String[] = ["Eggs", "Milks"]
var shoppingList1 = ["Eggs","Milk"]

shoppinglist.count
shoppinglist[1]

if shoppinglist.isEmpty {
     println("the shopping is empty")
}
else
{
    println("there is value")
}

shoppinglist.append("Flour")
shoppinglist += "Baking Powder"
shoppinglist += ["Chocolate", "cheese", "Butter"]

var firstItem = shoppinglist[0]
firstItem

shoppinglist[0] = "Six Eggs"
shoppinglist

shoppinglist[4..6] = ["Banna", "Apples"]
shoppinglist


shoppinglist.insert("Maple", atIndex: 1)
shoppinglist

shoppinglist.removeAtIndex(0)
shoppinglist

for item in shoppinglist {
    println(item)
}

// dictionary
var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB":"Dublin"]

for (airportCode, airPortName) in airports
{
    println("\(airportCode) and \(airPortName)")
}
