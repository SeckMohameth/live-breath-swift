import Foundation

//Demonstrating and learning the basics

// create varibales using let and var

let name = "Mohameth" // constant - can't change it's value.


var age: Int // you can decalre a varaible and it's type without giving it a value


// Examples -  trying out let and var
// =====================================
let myName = "Mo"
let yourName = "Foo"

var names = [
    myName,
    yourName
]

names.append("Bar")
names.append("Baz")


print(names)


// data types
var words: String // Strings
var num: Int // Integers
var isHungry: Bool //Boolean
var temp: Double
var decimal: Float


let moreNames = [
    "foo",
    "bar"
]

var copy = moreNames

// changing the copy of the data does not change the original
copy.append("Mo")
moreNames
copy


// Operators

