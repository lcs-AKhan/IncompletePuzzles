//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
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

// Start

print("The Cell Sell")
print("=============")

var evening = 0
var day = 0
var weekend = 0

// INPUT
// Get daytime minutes
day = Int.collectInput(withPrompt: "Number of daytime minutes? ", minimum: 0, maximum: nil)

// Get evening minutes
evening = Int.collectInput(withPrompt: "Number of evening minutes? ", minimum: 0, maximum: nil)

// Get weekend minutes
weekend = Int.collectInput(withPrompt: "Number of weekend minutes? ", minimum: 0, maximum: nil)

// PROCESS
// Calculate cost for plan A
var a = 0

// Add daytime cost
if day > 100 {
  a += (day - 100) * 25
}

// Add evening cost
a += evening * 15

// Add weekend cost
a += weekend * 20

// Calculate cost for plan B
var b = 0

// Add daytime cost
if day > 250 {
  b += (day - 250) * 45
}

// Add evening cost
b += evening * 35

// Add weekend cost
b += weekend * 25

// OUTPUT
print("Plan A costs \(a) cents")
print("Plan B costs \(b) cents")

if a > b {
  print("Plan B is cheaper by \(a - b) cents")
} else if a < b {
  print("Plan A is cheaper by \(b - a) cents")
} else {
  print("Plan A and B are the same price.")
}
