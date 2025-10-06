//
//  tasks2.swift
//  
//
//  Created by Julia Marusevich on 06.10.2025.
//

func numbers( n: (Int) -> ()) {
    for i in 1...10 {
        print(i)
    }
    n(4)
}
numbers( n: { value in
    print(value)
})

func emptyFunc( f: (Int) -> ()) {
    for i in 1...10 {
        print(i)
    }
    f(4)
}
emptyFunc { print($0) }
// task2
let numbers = [2, 534, 6, 777, 66, 34, 1, 55555, 34, 90]
var x = numbers.sorted(by: {s1, s2 in
    return s1 > s2
})
print(x)

var y = numbers.sorted(by: {s1, s2 in
    return s1 < s2
})
print(y)

// Task3
var array = [Int]()
array = [ -1, 0, 1, 2, 3, 4, -5]
func someFunc(array1: [Int], callBack: (Int, Int?) -> Bool) -> Int {
    var optV: Int?
    for v in array1 {
        if callBack(v, optV) {
            optV = v
        }
    }
    if let val = optV {
        return val
    }
    return 0
}

var resMax = someFunc(array1: array) {$0 >= 0 && $0 > $1 ?? 0}
print(resMax)

var resMin = someFunc(array1: array) {$0 < $1 ?? 0}
print(resMin)

//Task 4
let myString = "Helloworld"
let stringArr = Array(myString)

let consonants: Set<Character> = ["h", "l", "w", "r", "d", "H", "L", "W", "R", "D"]
let vowels: Set<Character> = ["e", "o", "E", "O"]

let sortedString = stringArr.sorted { a, b in
    let aIsVowel = vowels.contains(a)
    let bIsVowel = vowels.contains(b)
    
    if aIsVowel && !bIsVowel {
        return true
    } else if !aIsVowel && bIsVowel {
        return false
    } else {
        return a < b
    }
}

print(String(sortedString))

// Task 5
var stringArr1 = Array<Character>("yrgfelagftTUDKLOK")
func findTheBiggestCharacter(array: [Character], f: (Character, Character) -> Bool) -> Character {
    var sortedArray = [Character]()
    var biggest = array[0]
    for a in array.dropFirst() {
        if f(biggest, a) {
            biggest = a
        }
    }
    return biggest
}
var biggest = findTheBiggestCharacter(array: stringArr1) {$1 > $0}
print(biggest)

