// Playground - noun: a place where people can play
// Chapter - 1

import Cocoa

// -------- learning variables --------
var str = "Hello, playground" // variable
str = "Hello, Ei Wai"

let strconstant = "HELLO"  // constant. let is not allowed to assign any variable later.
let implictInteger = 70
let implictDouble = 70.0
let explictDouble : Double = 70
let explictFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width) // convert int to string.

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit." // \() it can include floating 


// -------- learning array and dictionary -------- -------- -------- -------- -------- --------
// array
var shoppingList = ["catFish", "weather", "water", "tulips","blue paint"]
shoppingList[1] = "bottle of water"
shoppingList = []
shoppingList

// dictionary
var occupations = [
    "Malcolm" : "Captain",
    "Kaylee": "Mechanic"
]

occupations ["Jayne"] = "Public Relations"
occupations

// create empty array or dictionary
let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()


// -------- Control Flow -------- -------- -------- -------- -------- --------
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

// -------- Control Flow and Optional String -------- -------- -------- -------- -------- --------
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Applessed"
var greeting = "Hello!"
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "How are you?"
}

// -------- Switch -------- -------- -------- -------- -------- --------
let vegetable = "red pepper"
switch vegetable {
case "celery" :
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress" :
    let vegetableComment = "That would make a good tea sandwich."
   
case let x where x.hasSuffix("pepper") :
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup"
    
}

// -------- for-in -------- -------- -------- -------- -------- --------
let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25],
]

var largest = 0
var kindofLargest = "Prime"
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest
        {
            largest = number
            kindofLargest = kind
        }
    }
}
largest
kindofLargest

// -------- for.. -------- -------- -------- -------- -------- --------
var firstForLoop = 0
for i in 0..3 {
    firstForLoop += 1
}
firstForLoop

var secondForLoop = 0
for var i=0; i < 3; i++ {
    secondForLoop += 1
}
secondForLoop

// -------- while -------- -------- -------- -------- -------- --------
var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m



