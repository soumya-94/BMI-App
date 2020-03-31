//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Soumya Bhatnagar on 01/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain
{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5
        {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else
        {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    
    func getBMIValue() -> String
    {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "No advice!"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    
}
