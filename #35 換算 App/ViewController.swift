//
//  ViewController.swift
//  #35 換算 App
//
//  Created by Lan on 2022/7/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var upTotalTextField: UITextField!
    @IBOutlet weak var upTipsTextField: UITextField!
    @IBOutlet weak var upPeopelCountTextField: UITextField!
    
    @IBOutlet weak var downTotalTextField: UITextField!
    @IBOutlet weak var downTipsTextField: UITextField!
    @IBOutlet weak var downPeopelShareTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
    }
    
    // click outside KB will hide KB
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // return hide KB
    
    @IBAction func dKB0(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func dKB1(_ sender: Any, forEvent event: UIEvent) {
        view.endEditing(true)
    }
    @IBAction func dKB2(_ sender: Any) {
        view.endEditing(true)
    }
    
    //
    @IBAction func calculateButton(_ sender: Any) {

        if let billAmountText = upTotalTextField.text,
           let tipPercentText = upTipsTextField.text,
           let headCountText = upPeopelCountTextField.text,
           
           let billAmount = Double(billAmountText),
           let tipPercent = Double(tipPercentText),
           let headCount = Double(headCountText)
        {
            let totalPay = billAmount*tipPercent*0.01+billAmount
            downTotalTextField.text = String(totalPay)
            let tipsPay = billAmount*tipPercent*0.01
            downTipsTextField.text = String(tipsPay)
            let headShare = totalPay/headCount
            downPeopelShareTextField.text = String(headShare)
        }
    }
    //
    
    
    
    @IBAction func clearButton(_ sender: Any) {
        upTotalTextField.text = ""
        upTipsTextField.text = ""
        upPeopelCountTextField.text = ""
        downTotalTextField.text = ""
        downTipsTextField.text = ""
        downPeopelShareTextField.text = ""
        
    }
}

