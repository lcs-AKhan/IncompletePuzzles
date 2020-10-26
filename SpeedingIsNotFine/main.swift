//
//  main.swift
//  Speeding Is Not Fine
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/speeding-is-not-fine.pdf
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

print("Speeding Is Not Fine")
print("====================")

// INPUT
// Ask for the speed limit
let limit = Int.collectInput(withPrompt: "Speed limit (km/h): ", minimum: 0, maximum: nil)

// Ask for the recorded speed of the car
let speed = Int.collectInput(withPrompt: "Enter speed of car in km/h: ", minimum: 0, maximum: nil)

// PROCESS AND OUTPUT
// See whether the driver is within the speed limit, and if they are not, see how much they are above the limit.
if speed < limit + 1 {
    print("Congratulations, you are within the speed limit!")
} else {
    print("You are speeding.")
    // Determine the fine
    let speedDifference = speed - limit
     if 0 < speedDifference, speedDifference < 21 {
      print("Your fine is $100")
      } else if 20 < speedDifference, speedDifference < 31 {
        print("Your fine is $270")
      } else if speedDifference > 30 {
        print("Your fine is $500")
    }
}
