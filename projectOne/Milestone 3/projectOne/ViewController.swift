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
    @IBOutlet weak var kilometers: UITextField!
    @IBOutlet weak var miles: UITextField!
    @IBOutlet weak var celsius: UITextField!
    @IBOutlet weak var farenheit: UITextField!
    @IBOutlet weak var kilograms: UITextField!
    @IBOutlet weak var pounds: UITextField!
    @IBOutlet weak var currencyRate: UITextField!
    @IBOutlet weak var foreignCurrency: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //should hide the keyboard
        return true
    }
    
    //function to convert dollars to pesos
    
    func updateDollars(){
        var amount:Float //dollars in dollar field
        var rate:Float
        
        if dollars.text!.isEmpty { //dollars text field
            amount = 0.0 //variable will store input in dollar
        } else {
            amount = Float(dollars.text!)!
        }
        if currencyRate.text!.isEmpty {
            rate = 0.0
        } else {
            rate = Float(currencyRate.text!)!*1
        }
        
       //let origDollar=Int(dollars.text!)
       let total=amount*rate
        
        //var finalTotal : Float = 0.0
        
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle
        let money = currencyFormatter.stringFromNumber(total)
        foreignCurrency.text = money!
    }//end of function
    
        
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
            farenAmount = 0.0
        } else {
            farenAmount = Float(farenheit.text!)!
        }
        
        let conversion = Float(0.5556)
        celsiusAmount = ((farenAmount - 32)*conversion)
        
        let tempFormatter = NSNumberFormatter()
        tempFormatter.numberStyle=NSNumberFormatterStyle.NoStyle
        let temp = tempFormatter.stringFromNumber(celsiusAmount)
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
    
    //Managing text fields: https://grokswift.com/uitextfield/ 
    
    func textFieldDidEndEditing(textField: UITextField) {
        if (textField == currencyRate){
            updateDollars()
        } else if (textField == miles){
            milesToKm()
        } else if (textField == kilometers){
            kmToMiles()
        } else if (textField == farenheit){
            farenToCelsius()
        } else if (textField == celsius) {
            celsiusToFaren()
        } else if (textField == pounds){
            poundsToKg()
        } else if (textField == kilograms){
            kgToPounds()
        }
    }
    
    
    override func viewDidLoad() {
        dollars.delegate = self //apple developer notes: handle text field's input via delegate callbacks
        foreignCurrency.delegate = self
        kilometers.delegate = self
        miles.delegate = self
        celsius.delegate = self
        farenheit.delegate = self
        pounds.delegate = self
        kilograms.delegate = self
        currencyRate.delegate = self
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //CRED for arrows' picture: created by Sarah for the Noun Project

}

