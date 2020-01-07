//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Aditya Shaw on 2020-01-06.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    var bmiAdvices = ""
    var bmiColor : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var bmiAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
        bmiAdvice.text = bmiAdvices
        view.backgroundColor = bmiColor
        
        }
    
    
    @IBAction func Recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
