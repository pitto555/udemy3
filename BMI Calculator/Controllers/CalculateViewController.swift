//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    
    @IBOutlet weak var sliderTextLabel: UILabel!
    @IBOutlet weak var weidthSliderLabel: UILabel!
    
    
    var hage = CalcBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderAction(_ sender: Any) {
        
        let height = String(format:"%.2f", heightSlider.value)
        
        sliderTextLabel.text = "\(height)m"
    }
    
    @IBAction func widthSliderAction(_ sender: Any) {
        
        let weidthSliderValue = Int(widthSlider.value)
        
        weidthSliderLabel.text = String("\(weidthSliderValue)kg")
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        hage.calclateBMI(height: heightSlider.value, weidth: widthSlider.value)
        
        self.performSegue(withIdentifier: "goto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goto" {
            let nextVC = segue.destination as! nextViewController
            nextVC.bmiValue = hage.getBMIValue()
            nextVC.advice = hage.getAdcice()
            nextVC.color = hage.getColor()
        }
    }
    
    
}




