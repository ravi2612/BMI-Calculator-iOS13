//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        print((sender.value * 100).rounded() / 100 )
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.f", sender.value))
        //print(Int(sender.value))
    }
}

