//
//  ViewController.swift
//  labTres
//
//  Created by Susana Gomez-Burgos on 9/26/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   // @IBOutlet weak var dollars: UITextField!
    @IBOutlet weak var dollar: UITextField!
    @IBOutlet weak var exchange: UITextField!
    @IBOutlet weak var dollarsL: UILabel!
    @IBOutlet weak var exchangeL: UILabel!
    @IBOutlet weak var totalMoney: UITextField!

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateTravelMoney() {
        var amount:Float //check amount dlls
        var rate:Float //ex. rate currency
        
        if dollar.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(dollar.text!)!
        }
        if exchange.text!.isEmpty {
            rate = 0.0
        } else {
            rate = Float(exchange.text!)!*1
        }
        
        let ogCash=Int(dollar.text!) //return optional
        let total=amount*rate
        var finalTotal : Float = 0.0
        if ogCash != nil {
            if ogCash! > 0 {
                finalTotal = amount*(Float(ogCash!))
            }else {
                let alert=UIAlertController(title: "Warning", message: "Add more money to the dollar field", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction=UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction)
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.dollar.text="1"
                self.updateTravelMoney()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            } //end else
        } //end if
        
        //format results -> currency
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle //set number style
        totalMoney.text=currencyFormatter.stringFromNumber(total)
    }//end function
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateTravelMoney()
    }
    
    override func viewDidLoad() {
        dollar.delegate=self
        exchange.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapGestureRecognized(sender: AnyObject) {
        dollar.resignFirstResponder()
        exchange.resignFirstResponder()
    }

}

