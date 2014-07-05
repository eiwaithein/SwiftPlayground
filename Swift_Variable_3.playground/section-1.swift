// Playground - noun: a place where people can play

import Cocoa

let orangesAreOrange = true // true
let isMondayWeekend = false // false

if isMondayWeekend {
    println("Monday is weekend")
} else {
    println("Monday is NOT weekend")
}

// --- Tuples ---
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

http404Error.0 // 404
http404Error.1 // Not Found

let (statusCode, statusMessage) = http404Error

statusCode // 404
statusMessage // Not Found


let (justTheStatusCode, _) = http404Error
justTheStatusCode // 404
// prints "The status code is 404”

//--- Naming Tuples values ---
let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode
http200Status.description


// Optional Binding
let possibleNumber = "123"
if let convertedNumber = possibleNumber.toInt()
{
    // it can convert
    convertedNumber
}
else
{
    // can't convert
}

// --- Optional value --- 
var age : Int? = 2 // 2
age = nil

// --- Implicitly Optional Value ---
let name: String? = "Merry"
name // {Some "Merry"}
name! // Merry

let anotherName: String! = "Michael"
anotherName // Michael

// --- Debugging with Assertion ---
let day = -3
assert(day >= 0, "day can't be less than zero")




