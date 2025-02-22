//
//  Power.swift
//  MVVMAndFreeformInput
//
//  Created by Connor Engel on 2025-02-21.
//

import Foundation

//Model
struct Power:  Identifiable {
    
    //MARK: Stored Properties
    
    
   let id = UUID()
    
    
    //The base of a power can hold any number
    var base: Double
    
    // The exponent of the power can hold and whole number
    var exponent: Int
    
    //MARK: Computed Properties
    var result: Double {
        
        // Start by making the solution equal to 1
        var solution = 1.0
        
        // Repeatedly multiply the base by itself
        // as many more times as needed
        
        if exponent == 0 {
            return solution
        } else {
            for _ in 1...exponent {
                solution *= base
            }
        }
        // Return the solution
        return solution
        
    }
}
