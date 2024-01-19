import Foundation

let myAge = 22
let yourAge = 20


// greater than operator
if myAge > yourAge {
    print("I am older")
} else if myAge < yourAge { // less than
    print("I'm younger than you")
} else {
    "Oh hey, we're the same age"
}

let num = 1
let num2 = 1

let sum: Int
let multiply: Int

sum = num + num2 // addition
multiply = num * num2 // multiply

print(sum)
print(multiply)


// 1. unary prefix - comes before
let foo = !true //takes the value on the right and negates it

// 2. unary postfix
let name = Optional("mo") // can be null or have a value
let uniaryPostFix = name!


// 3. binary infix


