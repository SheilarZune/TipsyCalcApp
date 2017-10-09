//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by Sheilar June on 10/9/17.
//  Copyright © 2017 Sheilar June. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
   
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        calculate()
        updateUI()
    }

    @IBAction func tipPercentageDidChanged(_ sender: Any) {
        print(tipPercentageSlider.value)
        calculate()
        updateUI()
    }
    
    @IBAction func billAmountDidChanged(_ sender: Any) {
        print("My value changed!")
        calculate()
        updateUI()
    }
    
    func calculate(){
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((txtBillAmount.text!) as NSString).doubleValue
        
        tip.calculateTip()
    }
    
    func updateUI(){
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
    }
}

