//
//  main.swift
//  MagicSquares
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/magic-squares.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
import Foundation

print("Magic Squares")
print("=============")
print("Enter 4 rows of 4 numbers:")
// INPUT
// Create an empty array to store each row of numbers
// NOTE: Each row will itself be an array, effectively creating a two-dimensional array.
var numbers: [[String]] = []

// Ask for the first row of numbers
// NOTE: This is provided as a String
let line1 = readLine()!

// Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line1.components(separatedBy: " "))

// Ask for the second row of numbers
// NOTE: This is provided as a string
let line2 = readLine()!

// Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line2.components(separatedBy: " "))

let line3 = readLine()!

numbers.append(line3.components(separatedBy: " "))

let line4 = readLine()!

numbers.append(line4.components(separatedBy: " "))

// PROCESS & OUTPUT
print("=============")

// Sums for each row and column
var sums = [Int]()
var sumsC = [Int]()

// Print each row and column of the array, showing values in a formatted manner
// Iterate over the rows
for row in 0...numbers.count - 1 {

    // Print gap (a tab character) in top-left corner and headers for columns
    if row == 0 {
        print("\t", terminator: "")
        for column in 0...numbers[row].count - 1 {
            print("\(column)\t", terminator: "")
            //print(type(of: column))
        }
        print("") // Go to next line
    }
    
    // Iterate over the columns
    var sum = 0
    var sumC = 0

    for column in 0...numbers[row].count - 1 {
        
        // Print row header
        if column == 0 {
            print("\(row)\t", terminator: "")
        }
        
        // Print the actual number at this row and column
        print("\(numbers[row][column])\t", terminator: "")


        // Keep a running total
        sum += Int(numbers[row][column])!
        sumC += Int(numbers[column][row])!

    }
    
    // Add sum (for column and row) to arrays
    sums.append(sum)
    sumsC.append(sumC)

    // Now go to the next line
    print("")
    
}

// Output for status of sums
print("The sums of each row are \(sums)")
print("The sums of each column are \(sumsC)")

// To determine if it is a magic square
if sums[0] == sums[1], sums[2] == sums[3], sums[1] == sums[2] {
  if sumsC[0] == sumsC[1], sumsC[2] == sumsC[3], sums[1] == sums[2] {
    print("MAGIC SQUARE!")
  } else {
    print("Not a magic square")
  }
} else {
  print("Not a magic square!")
}
