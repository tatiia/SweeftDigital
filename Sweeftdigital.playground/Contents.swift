import UIKit

func isPalindrome(text: String) -> Bool{
    var chars = [Character]()
    for char in text {
        chars.append(char)
    }
    for i in 0..<chars.count {
        if chars[i] == chars[chars.count - i - 1] {
        }
        else {
            return false
        }
    }
    return true
}

isPalindrome(text: "blacb")

func minSplit(amount: Int) -> Int {
    var count = 0
    var remaining = amount
    if amount / 50 != 0 {
        count = amount / 50
        remaining = amount % 50
    }
    if remaining / 20 != 0 {
        count += remaining / 20
        remaining = remaining % 20
    }
    if remaining / 10 != 0 {
        count += remaining / 10
        remaining = remaining % 10
    }
    if remaining / 5 != 0 {
        count += remaining / 5
        remaining = remaining % 5
    }
    if remaining < 5 {
        count += remaining
    }
    if amount < 5 {
        count = amount
    }

    return count
}


minSplit(amount: 152)

var array = [2, 3, -7, 6, 8, 1, -10, 15]

func notContains(array: [Int]) -> Int{
    var minValue = 1
    for int in array {
        if int > 0 {
            while array.contains(minValue) {
                minValue += 1
            }
        }
    }
    
    return minValue
}

notContains(array: array)

func isProperly(sequence: String) -> Bool {
    let pairs: [Character: Character] = ["(" : ")"]
    var stack = [Character]()
    let openingBracket = "("
    for char in sequence {
        if openingBracket.contains(char) {
            stack.append(char)
        } else {
            if stack.isEmpty {
                return false
            } else if let last = stack.last, last == pairs[char] {
                stack.popLast()
            } else {
                return false
            }
        }
    }
    return stack.isEmpty
}


isProperly(sequence: "(())))((()")



func countVariants(stearsCount: Int) -> Int{
    var num1 = 0
    var num2 = 1
    
    for _ in 0 ..< stearsCount {
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    return num2
}

countVariants(stearsCount: 7)


var stack = [Character]()
stack.append("a")
stack.append("b")
stack.append("c")
stack.popLast()
