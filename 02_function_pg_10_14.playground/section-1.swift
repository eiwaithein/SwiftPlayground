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














