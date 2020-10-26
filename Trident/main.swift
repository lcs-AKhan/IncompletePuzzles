//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
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

print("Trident")
print("=======")

// INPUT

// Get tine length
var tineLength = 0
tineLength = Int.collectInput(withPrompt: "Enter tine length: ", minimum: 0, maximum: nil)

// Get tine spacing
var spacing = 0
spacing = Int.collectInput(withPrompt: "Enter tine spacing: ", minimum: 0, maximum: nil)

// Get tine handle
var handle = 0
handle = Int.collectInput(withPrompt: "Enter handle length: ", minimum: 0, maximum: nil)

// OUTPUT

// Produce top of trident according to length given
for _ in 1...tineLength {
    // Print the tines
    for _ in 1...3 {
        
        // Print part of a tine
        print("*", terminator: "")
        
        // Print space between tines
        for _ in 1...spacing {
            print(" ", terminator: "")
        }
        
    }
    // Go to next line of output
    print("")
}

// Connect tines
let connect = (spacing * 2) + 3
for _ in 1...connect {
   print("*", terminator: "")
}

// Go to next line of output
print("")

// Print handle
for _ in 1...handle {
  for _ in 0...spacing {
    print(" ", terminator: "")
  }
  print("*")
}
