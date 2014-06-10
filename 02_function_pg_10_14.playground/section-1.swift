// Playground - noun: a place where people can play

import Cocoa

// -------- function 1 --------
func greet(name: String, day: String) -> String {
        return "Hello \(name), today is \(day)."
}

greet("Bob", "Tuesday")

// -------- function 2 --------
func getGasPrices () -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

// -------- function 3 --------
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}
sumOf()
sumOf(42,597,12)

// -------- function 4 --------
// nested function
func returnFifteen() -> Int {
    var y = 10
    func add () {
        y += 5
    }
    add ()
    return y
}
returnFifteen()

// -------- function 5 --------
// first-class type, function can return another function as its value.
func makeIncrementer() -> (Int -> Int){
    func addOne (number : Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

// -------- function 6 --------
// func can take func as parameter
func hasAnyMatches (list: Int[], condition:Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

numbers.map({ number in 3 * number})


// -------- function 7 --------
// closure to return zero for all odd numbers.

func hasAnyOddNumberMatches (list: Int[], condition:Int -> Bool) -> Int {
    for item in list {
        if condition(item) {
            return 0
        }
    }
    return 1
}

func findOddNumber(number: Int) -> Bool {
    return number % 2 == 1
}


var numbers1 = [1,5,8,4,45,26]
hasAnyOddNumberMatches(numbers1, findOddNumber)


// -------- function 8 --------
// sort
sort([1,3,2,7,8,3,5]) {$0 > $1}




// function with single arugment and multiple returned values.
func count (string : String) -> (vowel: Int, consonants: Int, others: Int)
{
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString
            {
            case "a","e","i","o","u":
                ++vowels
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                ++consonants
            default:
                ++others
            
        }
    }
    
    return (vowels, consonants, others)
}


let total = count("some arbitary strings")
total.vowel
total.consonants
total.others


// --------function 9 function with external parameters names --------
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String
{
    return s1 + joiner + s2
}


let value1 = join(string: "hello", toString: "world", withJoiner: ", ")
// external parameter name is hello, local parameter name is s1

let value2 = join(string: "Ei", toString: "Wai") // joiner is used default value




// -------- function 10 function with shorthand external parameter names --------
func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}

let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")
// so both external and local parameters in functions are same.. string and characterToFind


// -------- function 11 function with variadic parameters --------
// variadic parameters accepts zero or more values of a specific type.
func arithmeticMean (numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,4,5,6,7)


// -------- function 12 function with constant and variable parameters --------
func alright(var string:String, count: Int, pad: Character) -> String {
    // string is variable parameter and available as lcoal parameter, only exists for lifetime of that fun call.
    
    let amountToPad = count - countElements(string)
    
    for _ in 1...amountToPad {
        string = pad + string
    }
    return string
}

let originalString = "hello"
let paddedString = alright(originalString, 10, "-")


// --------  function 13 function with In-Out parameters --------
/*
In-Out parameter cannot have default values, and variadic parameters cannot be marked as inout. if you mark a parameter as inout, it cann't be marked as var or let.
*/
func swapTwoInts(inout a:Int, inout b:Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 7
swapTwoInts(&someInt,&anotherInt)
someInt
anotherInt

// -------- function 14 function with function type parameters --------
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
/*
“Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.”

Excerpt From: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/sg/jEUH0.l
*/

println("Result: \(mathFunction(2,3))")
mathFunction = multiplyTwoInts


// --------  function 15 function types as parameter types --------
/*
You can use a function type such as (Int, Int) -> Int as a parameter type for another function.
*/
func printMathResult(mathFunction:(Int, Int) -> Int, a: Int, b: Int)
{
    println("Result: \(mathFunction(a,b))")
}
printMathResult(addTwoInts,3,5)


// --------  function 16 function types as return types --------
func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}


func chooseStepFunction(backwards: Bool) -> (Int) -> (Int) {
    return backwards ? stepForward : stepBackward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)


// --------  function 17 nested functions --------
func choosesStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int ) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}

var currentValue1 = -4
let moveNearerToZero = choosesStepFunction(currentValue1 > 0)

while currentValue1 != 0 {
    println("\(currentValue1)...")
    currentValue1 = moveNearerToZero(currentValue1)
}























