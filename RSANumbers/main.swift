//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
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

print("RSA Numbers")
print("===========")

// INPUT
// Get lower limit of range
var lower = 0
lower = Int.collectInput(withPrompt: "Enter lower limit of range: ", minimum: 1, maximum: 1000)

// Get upper limit of range
var upper = 0
upper = Int.collectInput(withPrompt: "Enter upper limit of range: ", minimum: lower, maximum: 1000)

// PROCESS
// Count the number of divisors in the given Number
func divisorCountFunction(of givenNumber: Int) -> Int {
    
    // 1 always has a single divisor
    if givenNumber == 1 {
        
        return 1
        
    } else {
        
        // 1 is always a divisor
        var divisorCount = 1
        
        // Start looping from 2
        for i in 2...givenNumber {
            
            // What is the remainder?
            let remainder = givenNumber % i
            
            // TODO: Add some code here... we need to keep track of how many divisors there are
            if remainder == 0 {
                divisorCount += 1
            }
        }
        // Return the count of divisors
        return divisorCount

    }
    
}

var rsanumbers = 0
var lowerTillUpper = lower
for _ in lower...upper {
    while lowerTillUpper < (upper + 1) {
        var divisors = divisorCountFunction(of: lowerTillUpper)
        if divisors == 4 {
            rsanumbers += 1
        }
        lowerTillUpper += 1
    }
}

// How many divisors does a number have?
print("The # of RSA Numbers between \(lower) and \(upper) is \(rsanumbers)")
