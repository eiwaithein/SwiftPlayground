// Playground - noun: a place where people can play

import Cocoa

//------------ Enumeration ------------
enum  Rank : Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nince, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}

let ace = Rank.King
let aceRawValue = ace.toRaw()

let value1 = Rank.King.toRaw()
let value2 = Rank.Queen.toRaw()

if let convertedRank = Rank.fromRaw(3)
{
    let threeDescription = convertedRank.simpleDescription()
    
}

//------------ Enumeration ------------
enum Suit {
    case Spade, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spade: return "spades"
        case .Hearts: return "hearts"
        case .Diamonds: return "diamonds"
        case .Clubs: return "clubs"
        }
    }
    
    func getColor() -> String {
        switch self {
        case .Spade,Clubs: return "black"
        default: return "red"
        }
    }
    
}

let hearts = Suit.Hearts
let heartDesc = hearts.simpleDescription()

let spades = Suit.Spade
let spadesColor = spades.getColor()


//------------ Struct and Enum------------
/*
Struct supports many of the same behaviours as classes, including methods and initializers.
Difference between Struct and Class is that struct is always copied when they are passed, but classes are passed by reference.
*/


struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeofSpades = Card (rank: .Three, suit: .Spade)
let threeofSpadesDesc = threeofSpades.simpleDescription()


//------------ Enum Server response------------
enum ServerResponse{
    case Result(String,String)
    case Error(String)
}
// sun rise and sun set time
let success = ServerResponse.Result("6.00 am", "8.09 pm")
let failure = ServerResponse.Error("Out of cheese")

switch success{
case let .Result(sunrise,sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}

// Experiment - add a third case to ServerResponse and to the switch.

