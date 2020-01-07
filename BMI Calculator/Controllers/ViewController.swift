//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmiValue = "0.0"
    var bmiAdvices = ""
    var bmiColor : UIColor?
    var bmiClass = CalculateBmi()

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightValue: UISlider!
    
    @IBOutlet weak var weightValue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
         let height = String(format:"%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func Calculate(_ sender: UIButton) {
        let height = heightValue.value
        let weight = weightValue.value
        bmiClass.bmiCalcuation(height : height, weight : weight)
        
       
        self.performSegue(withIdentifier: "transfer", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "transfer")
        {
            let destination = segue.destination as! SecondViewController
            destination.bmiValue = bmiClass.printBmi()
            destination.bmiAdvices = bmiClass.getAdvice()
            destination.bmiColor = bmiClass.getColor()
        }
    }
    
}

