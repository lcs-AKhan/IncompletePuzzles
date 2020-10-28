//
//  main.swift
//  TheCellSell - Exemplar Solution
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-the-cell-sell.pdf
//

import Foundation

print("The Cell Sell")
print("=============")

// EXTENSIONS

// NOTE: In a correct solution, this extension should be linked from another file, per these instructions:
//
//       https://www.russellgordon.ca/cs/incomplete-puzzles/applying-extensions/
extension Int {
    
    static func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
        
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

// INPUT

// Get daytime minutes
let day = Int.getInput(withPrompt: "Number of daytime minutes? ",
                       minimum: 0,
                       maximum: nil)

// Get evening minutes
let evening = Int.getInput(withPrompt: "Number of evening minutes? ",
                           minimum: 0,
                           maximum: nil)

// Get weekend minutes
let weekend = Int.getInput(withPrompt: "Numbrer of weekend minutes? ",
                           minimum: 0,
                           maximum: nil)

// PROCESS
//
// NOTE: To unit test logic you have written, it must be encapsulated (described) within a function.
//
//       Write a function with:
//
//       1. a meaningful name
//       2. parameters that describe the input required
//            (in this case, three integers)
//       3. an appropriate return type
//            (in this case, a string describing what plan is least expensive)
//
func compareCosts(day: Int, evening: Int, weekend: Int) -> String {
    
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
    
    // Build the result to be returned
    var result = ""
    
    result += "Plan A costs \(a)\n"
    result += "Plan B costs \(b)\n"
    
    if a > b {
        result += "Plan B is cheapest."
    } else if a == b {
        result += "Plan A and B are the same price."
    } else {
        result += "Plan A is cheapest."
    }
    
    // Return the result
    return result
    
}

// OUTPUT
//
// Invoke the new function to get result and print it to the screen
let output = compareCosts(day: day,
                          evening: evening,
                          weekend: weekend)
print(output)
