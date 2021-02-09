//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by raji navarro on 09/02/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice () -> String{
        return  bmi?.advice ?? "No advice"
    }
    func getColor () -> UIColor {
        return  bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        
         let bmiValue = weight / pow(height, 2)
        
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more ! Under Weight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9  {
            bmi = BMI(value: bmiValue, advice: "helthy !", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Over Weight", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
        //bmi = BMI(value: bmiValue, advice: String, color: color.Literal)
        
     }
    
}
