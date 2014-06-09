// Playground - noun: a place where people can play

import Cocoa

// Struct ------------
/*
Struct supports many of the same behaviours as classes, including methods and initializers.
Difference between Struct and Class is that struct is always copied when they are passed, but classes are passed by reference.
*/


struct Card {
    var rank: Rank
    var suit: Suit
}
