//
//  main.swift
//  WinningScore
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/winning-score.pdf
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


print("Winning Score")
print("=============")

// HINT: There are many ways to approach this puzzle.
//       In this case, a structure provides a way to create a more readable program.

// NOTE: The structure and logic for the puzzle remain incomplete. Where should new
//       functionality be added?

// Define a structure to represent points scored by each team
struct GameScore {
    
    // Regular properties to track scoring
    var threePointShots: Int = 0
    var fieldGoals: Int = 0
    var freeThrows: Int = 0
    
    // Computed property to determine points earned
    var totalPoints: Int {
        return (threePointShots * 3) + (fieldGoals * 2) + (freeThrows)
    }
    
}

// Initialize an instance of the GameScore structure for each team
var apples = GameScore()
var bananas = GameScore()

// INPUT
apples.threePointShots = Int.collectInput(withPrompt: "Three point shots in for Apples", minimum: 0, maximum: 100)
apples.fieldGoals = Int.collectInput(withPrompt: "Field goals in for Apples", minimum: 0, maximum: 100)
apples.freeThrows = Int.collectInput(withPrompt: "Free throws in for Apples", minimum: 0, maximum: 100)

bananas.threePointShots = Int.collectInput(withPrompt: "Three point shots in for Bananas", minimum: 0, maximum: 100)
bananas.fieldGoals = Int.collectInput(withPrompt: "Field goals for Bananas", minimum: 0, maximum: 100)
bananas.freeThrows = Int.collectInput(withPrompt: "Free throw for Bananas", minimum: 0, maximum: 100)

// PROCESS
print("")

if apples.totalPoints > bananas.totalPoints {
    let difference = apples.totalPoints - bananas.totalPoints
    print("The Apples won by \(difference) points!")
} else if apples.totalPoints < bananas.totalPoints {
    let difference = bananas.totalPoints - apples.totalPoints
    print("The Bananas won by \(difference) points!")
} else {
    print("Tie")
}

print("")
// OUTPUT

