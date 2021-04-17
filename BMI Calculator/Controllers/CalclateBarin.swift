//
//  CalclateBarin.swift
//  BMI Calculator
//
//  Created by aoka on 2021/04/08.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalcBrain {
    var bmi:BMI?
    
    mutating func calclateBMI(height: Float, weidth: Float) {
        
    let bmiValue = weidth / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "やせすぎ飯を食べろ", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "普通体型ええやん", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "太りすぎやせろ!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
        
    }
    
    func getAdcice() -> String {
        
        let advice = String(bmi?.advice ?? "")
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
    
}
