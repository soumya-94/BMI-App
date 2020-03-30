//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Soumya Bhatnagar on 30/03/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    var bmiValue = "0.0"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()   // create a label
        label.text = bmiValue    // add text to the label
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)    // give the label some size
        view.addSubview(label)  // to the main background view add the lable as the subview (label is also a view)
    }
    
    
}
