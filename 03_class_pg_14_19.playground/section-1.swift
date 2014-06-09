// Playground - noun: a place where people can play

import Cocoa

// -------- Classes and Objects --------
class Shape {
    var numberofSides = 0
    let ShapeName = "Square"
    func simpleDescription() -> String {
        return "A shape with \(numberofSides) sides."
    }
    
    func simpleShapeName (sides : Int) {
        numberofSides = sides
    }
}


var shape = Shape()
shape.simpleShapeName(7)
shape.simpleDescription()


//----------------------------------------------------------------------------------------//
// -------- Classes and Objects --------
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
    
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sidelength: Double, name: String)
    {
        self.sideLength = sidelength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double
    {
        get {
        
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sidelength: 3.1, name: "a triangle" )
triangle.perimeter
triangle.sideLength


class TriangleAndShape {
    var triangle: EquilateralTriangle{
    willSet {
        square.sideLength = newValue.sideLength
    }
    }
    
    var square: Square{
    willSet {
        triangle.sideLength = newValue.sideLength
    }
    }
    
    init(size: Double, name: String){
        square = Square(sideLength:size, name:name)
        triangle = EquilateralTriangle(sidelength:size,name:name)
    }
    
}

var triangleAndSquare = TriangleAndShape(size:10, name:"another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength:50, name:"large square")
triangleAndSquare.triangle.sideLength

let optionalSquare: Square? = Square(sideLength:2.5, name:"optional square")
let sideLength = optionalSquare?.sideLength


//----------------------------------------------------------------------------------------//
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberofTimes times:Int) {
        count += amount * times
    }
    
}

var counter = Counter()
counter.incrementBy(2, numberofTimes: 7)



