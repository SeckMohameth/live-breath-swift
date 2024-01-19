import Foundation

/* Notes
 Strings are value types
    - when creating a string value it's vaule is copied
 
 More info here
    - https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/
 */

// string literal
let someString = "Some string literal value" // infers string becuase initialized with a srting literal value


// Multiline String Literals
let quation = """
I actually didn't know you could do this in swift.\
I'm using the Swift docs on apple to learn and practice more\

See, it's a good thing I'm not relying entirely on a crash course on YouTube 😉.\
Well, now I know I can create multiline string literals
"""



//special characters
let wiseWords = "\"Imagination is more important than knowledge\""
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

//Initializing an Empty String
var emptyString = ""
var anotherEmptyStringLiteral = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}


let constartString = "This string can not be modified"

//iterate through string
for character in "Connecticut" {
    print(character)
}


let letter: Character = "M"


let word: [Character] = ["C", "a", "t", "s", "🐱"]

// this combines the array into one string
let catString = String(word)
print(catString)

// Concatenating Strings and Characters
let string1 = "Hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
// addition assignment operator
instruction += " there"

let exclamationPoint = "!"

// append() method
instruction.append(exclamationPoint)


// String Interpolation
// allows you to construct a new string by adding values like constants, variables, literals, and expressions

let sum = 2
let math = "1 plus 1 is equal to \(sum)"

let multiplyer = 3
let message = "\(multiplyer) times 2.5 is \(Double(multiplyer) * 2.5)"


//retrieving the count of a character
print(message.count)
