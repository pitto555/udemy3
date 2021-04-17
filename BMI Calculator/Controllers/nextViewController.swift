//
//  nextViewController.swift
//  BMI Calculator
//
//  Created by aoka on 2021/04/08.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalclatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
