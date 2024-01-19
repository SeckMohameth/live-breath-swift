import Foundation

// Working with functions

func noArgumentsAndNoReturnValue() {
    "I don't know what I'm doing"
}

noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    var newValue = value + 2
}

plusTwo(value: 30)

func newPlusTwo(value: Int) -> Int {
    return value + 2
}


newPlusTwo(value: 2)


// multiple arguments
func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 20, value2: 30)


func minus(_ num1: Int, _ num2: Int) -> Int {
    num1 - num2
}

minus(3, 1)



func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
