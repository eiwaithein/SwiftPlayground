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

