
//
//  tasks3.swift
//  
//
//  Created by Julia Marusevich on 06.10.2025.
//

enum Food: String {
    case pizza
    case pasta = "PASTAS"
    case chicken = "CHICKEN"
}

print(Food.pizza.rawValue)
print(Food.chicken)

enum Color: String {
    case red, blue, green
}
let planet = Color.red
print(planet.rawValue)

enum Food2 {
    case apple(color: String, price: Double, quantity: Int)
    case banana(color: String, price: Double, quantity: Int)
    case orange(color: String, price: Double, quantity: Int)
}
 
var fruit: Food2 = .apple(color: "red", price: 1.2, quantity: 10)
print(fruit)



enum Direction : String{
   case Left = "Left!"
   case Right = "Right!"
}

enum Action {
   case Walk(meters: Int)
   case Run(meters: Int, speed: Double)
   case Stop
   case Turn(direction: Direction)
   
   enum Direction {
       case Left
       case Right
   }
}

var action : Action = Action.Run(meters: 20, speed: 15)
action = Action.Stop
action = .Walk(meters: 10)
action = .Turn(direction: .Left)
var direct = Direction(rawValue: "Right!")!
action = .Turn(direction: direct)

switch action {
   case .Stop: print("Stop")
   case .Walk(let meters) where meters < 100:
       print("Short walk")
   case .Walk(let meters):
       print("Long walk")
   case .Run(let m, let s):
       print("run \(m) meters with speed \(s)")
   case .Turn(let dir) where dir == .Left:
       print("Turn left")
   case .Turn(let dir) where dir == .Right:
       print("Turn right")
   default: break
}

print(Direction.Left.rawValue)

enum Help: CaseIterable {
   case four, five, six, seven
}
let count = Help.allCases.count
print(count)

enum Beverage: CaseIterable {
   case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print(numberOfChoices)

enum Figure {
   case King(color: FigureColor, letter: String, number: Int)
   case Queen(color: FigureColor, letter: String, number: Int)
   case Rook(color: FigureColor, letter: String, number: Int)
   case Bishop(color: FigureColor, letter: String, number: Int)
   case Knight(color: FigureColor, letter: String, number: Int)
   case Pawn(color: FigureColor, letter: String, number: Int)
}

enum FigureColor : String {
   case White = "White"
   case Black = "Black"
}

var king = Figure.King(color: .Black, letter: "B", number: 1)
var queen = Figure.Queen(color: .Black, letter: "B", number: 2)
var pawn = Figure.Pawn(color: .White, letter: "C", number: 3)

var array2 = [king]
_ = array2

func printFigureInfo(figure: Figure) {
   switch figure {
   case .King(let color, let letter, let number):
       print("Figure: King, color \(color.rawValue), position: \(letter)\(number)")
   
   default:
  print("Unknown Figure type")
   }
}

// Task 2
func printFigureArray(array: [Figure]) {
   for item in array {
       print(item)
   }
}

// Task 3
func drawBoard(figures: [Figure]) {
   let letters = ["A","B","C","D","E","F","G","H"]
   
   print(" " + String(repeating: "+---", count: 8)+"+")
   
   for row in (1...8).reversed() {
       print("\(row) ", terminator: "")
       
       for (col, letter) in letters.enumerated() {
           let cellColor = (row + col) % 2 == 0 ? FigureColor.Black : FigureColor.White
           
           var figureSymbol : String?
           for figure in figures {
               switch figure {
               case .King(let color, let l, let n) where l == letter && n == row:
                   figureSymbol = color == .White ? "♔" : "♚"
               default: continue
               }
           }
           if let symbol = figureSymbol {
               print("| \(symbol) ", terminator: "")
           } else {
               let colorIndicator = cellColor == .White ? "W" : "B"
               print("| \(colorIndicator) ", terminator: "")
           }
       }
       
       print("|")
       print(" " + String(repeating: "+---", count: 8) + "+")
   
}
   
   print("  ", terminator: "")
   for letter in letters {
       print("  \(letter) ", terminator: "")
   }
   print()
}

drawBoard(figures: array2)

