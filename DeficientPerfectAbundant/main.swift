//
//  main.swift
//  DeficientPerfectAbundant
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/deficient-perfect-abundant.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-deficient-perfect-abundant.pdf
//

import Foundation

print("Deficient, Perfect, Abundant")
print("============================")

// INPUT

// Get the number to check
let n = Int(readLine()!)!


// PROCESS

// Determine the sum of proper divisors
// e.g.: 6 has three proper divisors
//       1, 2, 3
//       Since their sum is 6, 6 is a perfect number.
for i in 1...n / 2 {
    print(i)
}


// OUTPUT
print("\(n) is uncategorized at this time. It might be deficient, perfect, or abundant.")
