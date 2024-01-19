import Foundation

// IF STATEMENTS

let myAge = 27
let myName = "Mohameth"

if myName == "mohameth" {
    "Your name is \(myName)"
} else {
    "oops guessed it wrong"
}


// old school?
if "Mohameth" == myName {
    print("spelled it right")
}

var remainder = 8 % 2

if remainder == 0 {
    print("no remainder")
} else if 9%2 != 0 {
    print("this is a odd number with a remainder")
}



let underAge = myAge < 21 ? "you are under age" : "You are over 21"

print(underAge)




let male = true
let geneder = "man"

// adding a else won't mean anything because the first will always run
// you chain them together
if male && geneder == "man" {
    print("You are both a male and a man")
}

if myAge == 27 || myName == "Mohameth" {
    print("either age is 20 or name is Mohameth")
}


