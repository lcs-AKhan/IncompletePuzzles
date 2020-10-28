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
        return threePointShots * 3
    }
    
}

// Initialize an instance of the GameScore structure for each team
var apples = GameScore()
var bananas = GameScore()

// INPUT
apples.threePointShots = Int(readLine()!)!
apples.fieldGoals = Int(readLine()!)!

// PROCESS
let pointSpreadAToB = apples.totalPoints - bananas.totalPoints

// OUTPUT

