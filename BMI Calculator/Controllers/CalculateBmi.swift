//
//  CalculateBmi.swift
//  BMI Calculator
//
//  Created by Aditya Shaw on 2020-01-06.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculateBmi {
    
    var Bmi : BMI?
    
    mutating func bmiCalcuation(height : Float, weight : Float){
         let bmiValue = weight / (height*height)
        
        if(bmiValue < 18.5){
            Bmi = BMI(value: bmiValue, advice: "Eat more food", colour: UIColor.green)
        }else if(bmiValue < 24.5){
            Bmi = BMI(value: bmiValue, advice: "Your Fit", colour: UIColor.blue)
        }  else{
            Bmi = BMI(value: bmiValue, advice: "Eat Less", colour: UIColor.red)
        }  }
    func printBmi() -> String {
        
        let bmiString = String(format : "%.2f" , Bmi?.value ?? "")
        
        return bmiString
     
    }
    
    func getAdvice() -> String
    {
        return Bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return Bmi?.colour ?? UIColor.white
    }
}
