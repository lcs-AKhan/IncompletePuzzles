//
//  main.swift
//  ComputerPurchase
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/computer-purchase.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

extension Int {
    
    static func collectInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
        
        // Loop until a valid value is provided
        while true {
            
            // Prompt the user
            print(prompt)
            
            // Collect the input
            guard let givenInput = readLine() else {
                continue
            }
            
            // Convert to an integer
            guard let givenInteger = Int(givenInput) else {
                continue
            }
            
            // If a lowest value for the integer was specified...
            if let minimumValue = minimum {
                
                // ... then check that the given integer is greater than or equal to the lowest desired value.
                guard givenInteger >= minimumValue else {
                    continue
                }
                
            }
            
            // If an highest possible value for the integer was specified...
            if let maximumValue = maximum {
                
                // ... then check that the given integer is less than or equal to the highest desired value.
                guard givenInteger <= maximumValue else {
                    continue
                }
                
                
            }
            
            // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
            return givenInteger
            
        }
    }
}

print("Computer Purchase")
print("=================")

// HINT: There are many ways to approach this puzzle.
//       How might you use a structure to complete this puzzle?

// NOTE: Completing Magic Squares (or at least having tried the starter code)
//       is recommended before trying this puzzle. 👀 at lines 28 and 36.

struct ComputerSpecification {
    var computername: String
    var ram: Int
    var cpu: Int
    var disk: Int
}

// INPUT

// Find out how many computers we will compare specs for
// Get the specs for "n" different computers

let n = Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 1, maximum: nil)

var computers = [ComputerSpecification]()
var maximum = 0
var nameOfMaxComputer = ""
var specNumber = 1

// PROCESS

for _ in 1...n {
    print("Spec \(specNumber)?")
    let specs = readLine()!
    let specsSeparated = specs.components(separatedBy: " ")
    let computerName = specsSeparated[0]
    let ram = Int(specsSeparated[1])!
    let cpu = Int(specsSeparated[2])!
    let disk = Int(specsSeparated[3])!
    let formula = (2 * ram) + (3 * cpu) + disk
    if formula > maximum {
        maximum = formula
        nameOfMaxComputer = computerName
    specNumber += 1
    }
}

// OUTPUT

print("The best computer for you is \(nameOfMaxComputer)")
