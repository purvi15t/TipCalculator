//
//  ViewController.swift
//  Tippy
//
//  Created by purvi gupta on 7/21/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
        print("OnTap Function works")
    
        view.endEditing(true)
    }
    @IBAction func ComputeTip(_ sender: Any) {
        
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Compute the Tip and Total
        let tipPercent = [0.15, 0.18, 0.20]
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update the Tip and Total Label
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}

