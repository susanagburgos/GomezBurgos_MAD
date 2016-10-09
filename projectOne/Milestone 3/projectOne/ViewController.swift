//
//  ViewController.swift
//  projectOne
//
//  Created by Susana Gomez-Burgos on 10/8/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var dollars: UITextField!
    @IBOutlet weak var pesos: UITextField!
    @IBOutlet weak var kilometers: UITextField!
    @IBOutlet weak var miles: UITextField!
    @IBOutlet weak var celsius: UITextField!
    @IBOutlet weak var farenheit: UITextField!
    @IBOutlet weak var kilograms: UITextField!
    @IBOutlet weak var pounds: UITextField!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder() //should hide the keyboard
        return true
    }
    
    //function that will call other functions depending on which textfield is selected
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool { //calculates as soon as you leave textfield
        if (textField == dollars) {
            dollarsToPeso()
            return true
            
        } else if (textField == pesos) {
            pesosToDollar()
            return true
            
        } else if (textField == kilometers) {
            kmToMiles()
            return true
            
        } else if (textField == miles) {
            milesToKm()
            return true
            
        } else if (textField == celsius) {
            celsiusToFaren()
            return true
            
        } else if (textField == farenheit) {
            farenToCelsius()
            return true
            
        }

        return false
    }
    
    //function to convert dollars to pesos
    
    func dollarsToPeso(){
        var dollarAmount:Float //dollars in dollar field
        var pesosAmount:Float
        
        if dollars.text!.isEmpty { //dollars text field
            dollarAmount = 0.0 //dollars float variable
        } else {
            dollarAmount = Float(dollars.text!)!
        }
        
        let xRate = Float(19.3)
        pesosAmount = xRate*dollarAmount
        
        
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle
        let money = currencyFormatter.stringFromNumber(pesosAmount)
        pesos.text = money! + " MXN"
    }
    
    //function to convert pesos to dollars

    func pesosToDollar(){
        var dollarAmount:Float
        var pesosAmount:Float
        
        if pesos.text!.isEmpty { //dollars text field
            pesosAmount = 0.0 //dollars float variable
        } else {
            pesosAmount = Float(pesos.text!)!
        }
        
        let xRate = Float(0.052)
        dollarAmount = xRate*pesosAmount
        
        let currencyFormatter = NSNumberFormatter()
        //currencyFormatter.currencyCode = MXN
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle
        let money = currencyFormatter.stringFromNumber(dollarAmount)
        dollars.text = money! + " USD"
    }
    
    //function to convert kilometer to miles
    
   func kmToMiles(){
        var kilometerAmount:Float
        var milesAmount:Float
        
        if kilometers.text!.isEmpty {
            kilometerAmount = 0.0
        } else {
            kilometerAmount = Float(kilometers.text!)!
        }
        
        let speedRate = Float(0.62)
        milesAmount = speedRate*kilometerAmount
        
        let speedFormatter = NSNumberFormatter()
        speedFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        let speed = speedFormatter.stringFromNumber(milesAmount)
        miles.text = speed! + " miles"

    }
    
    //function to convert miles to km
    
    func milesToKm(){
        var kilometerAmount:Float
        var milesAmount:Float
        
        if miles.text!.isEmpty {
            milesAmount = 0.0
        } else {
            milesAmount = Float(miles.text!)!
        }
        
        let speedRate = Float(1.61)
        kilometerAmount = speedRate*milesAmount
        
        let speedFormatter = NSNumberFormatter()
        speedFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        //kilometers.text = speedFormatter.stringFromNumber(kilometerAmount)
        let speed = speedFormatter.stringFromNumber(kilometerAmount)
        kilometers.text = speed! + " km"
    }
    
    //function to convert celsius to farenheit
    
    func celsiusToFaren(){
        var celsiusAmount:Float
        var farenAmount:Float
        
        if celsius.text!.isEmpty {
            celsiusAmount = 0.0
        } else {
            celsiusAmount = Float(celsius.text!)!
        }
        
        let conversion = Float(1.8)
        farenAmount = (conversion*celsiusAmount) + 32
        
        let tempFormatter = NSNumberFormatter()
        tempFormatter.numberStyle=NSNumberFormatterStyle.NoStyle
        let temp = tempFormatter.stringFromNumber(farenAmount)
        farenheit.text = temp! + " °F"
    }
    
    //function to convert farenheit to celsius
    
    func farenToCelsius(){
        var celsiusAmount:Float
        var farenAmount:Float
        
        if farenheit.text!.isEmpty {
            farenAmount = 0
        } else {
            farenAmount = Float(farenheit.text!)!
        }
        
        let conversion = Float(0.5556)
        celsiusAmount = (farenAmount - 32) * conversion
        
        let tempFormatter = NSNumberFormatter()
        tempFormatter.numberStyle=NSNumberFormatterStyle.NoStyle
        let temp = tempFormatter.stringFromNumber(farenAmount)
        celsius.text = temp! + " °C"
    }
    
    //function to conver kilograms to pounds
    
    func kgToPounds(){
        var kgAmount:Float
        var poundAmount:Float
       
        if kilograms.text!.isEmpty {
            kgAmount = 0.0
        } else {
            kgAmount = Float(kilograms.text!)!
        }
        
        let conversion = Float(2.2046)
        poundAmount = kgAmount*conversion
        
        let weightFormatter = NSNumberFormatter()
        weightFormatter.numberStyle=NSNumberFormatterStyle.NoStyle
        let weight = weightFormatter.stringFromNumber(poundAmount)
        pounds.text = weight! + " lbs"
    }
    
    //function to convert pounds to kilograms
    
    func poundsToKg(){
        var kgAmount:Float
        var poundAmount:Float
        
        if pounds.text!.isEmpty {
            poundAmount = 0.0
        } else {
            poundAmount = Float(pounds.text!)!
        }
        
        let conversion = Float(0.4536)
        kgAmount = poundAmount*conversion
        
        let weightFormatter = NSNumberFormatter()
        weightFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        let weight = weightFormatter.stringFromNumber(kgAmount)
        kilograms.text = weight! + " kg"
    }
    
    //function that will call function once user is out of textfield
    
    func textFieldDidEndEditing(textField: UITextField) {
        if(textField == dollars){
            dollarsToPeso()
        } else if (textField == pesos){
            pesosToDollar()
        } else if (textField == miles){
            milesToKm()
        } else if (textField == kilometers){
            kmToMiles()
        } else if (textField == farenheit){
            farenToCelsius()
        } else if (textField == celsius) {
            celsiusToFaren()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dollars.delegate = self //developer notes: handle text field's input via delegate callbacks
        pesos.delegate = self
        kilometers.delegate = self
        miles.delegate = self
        celsius.delegate = self
        farenheit.delegate = self
        pounds.delegate = self
        kilograms.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

