// Playground - noun: a place where people can play

import Cocoa

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
println("status code is \(statusCode)")
println("the status message is \(statusMessage)")



// ignore parts of the tuple with an underscore(_)
let (justTheStatusCode, _) = http404Error
println("the statuscode is \(justTheStatusCode)")

println("the statuscode is \(http404Error.0)")
println("the statuscode is \(http404Error.1)")

let http200Status = (statusCode : 200, description: "OK")
http200Status.statusCode
http200Status.description
println("status message is \(http200Status.description)")


// optional
let possibleNumber = "123"
if let actualNumber = possibleNumber.toInt()
{
    println("\(possibleNumber) has an integer value")
} else {
    println("\(possibleNumber) can't be converted")
}

// nil
var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String?

let possibleString: String? = "An optional string."
println(possibleString)

let assumeString: String! = "An implicit unwrapped optional string."
println(assumeString)

let age = -3
assert(age >=0, "A person's age cannot be less than zero"
)