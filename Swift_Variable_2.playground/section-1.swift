// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// ---- Integer Bounds ------ //
// get min and max for UInt8
let minValueForUInt8 = UInt8.min
let maxValueForUInt8 = UInt8.max

// get min and max for UInt16
let minValueForUInt16 = UInt16.min
let maxValueForUInt16 = UInt16.max

// get min and max for UInt32
let minValueForUInt32 = UInt32.min
let maxValueForUInt32 = UInt32.max

// get min and max for UInt64
let minValueForUInt64 = UInt64.min
let maxValueForUInt64 = UInt64.max

// get min and max for UInt8
let minValueForInt8 = Int8.min
let maxValueForInt8 = Int8.max

// get min and max for UInt16
let minValueForInt16 = Int16.min
let maxValueForInt16 = Int16.max

// get min and max for UInt32
let minValueForInt32 = Int32.min
let maxValueForInt32 = Int32.max

// get min and max for UInt64
let minValueForInt64 = Int64.min
let maxValueForInt64 = Int64.max

let amount:Double = 23456789010.564
let distance:Float = 12.5

// --- Literal ----
let age = 30 // type inference as Int
let pi = 3.14159 // type inference as Double
let anotherPi = 3 + 0.14159  // type inference as Int

// --- Numeric Literals ----
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

// --- Exponent Literals ----
let decimalDouble = 12.1875 // 12.188
let exponentDouble = 1.21875e1 // 12.188
let hexadecimalDouble = 0xC.3p0 // 12.188

// --- formatted literal ----
let paddedDouble = 000123.456 //123.456
let oneMillion = 1_000_000 // 1,000,000
let justOverOneMillion = 1_000_000.000_000_1 // 1,000,000.0

// Numeric conversion
let twoThousand: UInt16 = 2_000 // 2000
let one: UInt8 = 1 //1
let twoThousandAndOne = twoThousand + UInt16(one) // 2001

// Integer and Floating-Point Conversion
let three = 3 // 3
let pointOneFourOneFiveNine = 0.14159 //0.142
let anotherPiValue = Double(three) + pointOneFourOneFiveNine // 3.142

// Type Aliases
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // 65,355
