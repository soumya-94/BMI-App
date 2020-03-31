//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Soumya Bhatnagar on 01/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain
{
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String
    {
        return String(format: "%.1f", bmi)
    }
}
