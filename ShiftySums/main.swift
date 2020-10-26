//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
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

print("Shifty Sums")
print("===========")

// INPUT
// Get the number to be shifted
var number = 0
number = Int.collectInput(withPrompt: "Which number do you want to shift?", minimum: 1, maximum: nil)

// How many times should we shift?
var k = 0
k = Int.collectInput(withPrompt: "How many times do you want this number to be shifted?", minimum: 1, maximum: nil)

// PROCESS
// Shift the given number "k" number of times
var output = number
for _ in 1...k {
  number *= 10
  output += number
}

// OUTPUT
print(output)
