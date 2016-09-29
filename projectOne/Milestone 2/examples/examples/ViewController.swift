//
//  ViewController.swift
//  examples
//
//  Created by Susana Gomez-Burgos on 9/28/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var pesosLabel: UILabel!
    
    @IBOutlet weak var dollar: UITextField!
    
    @IBOutlet weak var pesos: UITextField!
    //will create a variable for all the text inputs and label
    
    //Create a subclass for UITextFieldDelegate 
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //Create a function that will calculate the CURRENCY EXCHANGE
        //create a variable that will save the input to a float variable
    //if dollar text field is equal to 0, it will be stay at 0
    //else we're going to save dollar input into a variable
    
    //Create a variable where we take the input of our user and make it into an Int
    
    //if we have a dollar value higher than 0 -> we will save our equation for currency exchange into a variable 
    //else if they input 0 we will alert them and change the 0 to one. Nothing will happen if they leave it blank 
    //add a currency formatter in order for our text displays correctly?
    
    //Create a function that will calculate the SPEED LIMIT
    //SPEED LIMIT will
    //create a variable that will save the input to a float variable
    //if Km text field is equal to 0, it will be stay at 0
    //else we're going to save km input into a variable
    
    //Create a variable where we take the input of our user and make it into an Int
    
    //if we have a km value higher than 0 -> we will save our equation for Speed Limit into a variable
    //else if they input 0 we will alert them and change the 0 to one. Nothing will happen if they leave it blank

    //Repeat same format of function for WEIGHT
    
    //Create a function that will calculate the TEMPERATURE
    //create a variable that will save the input to a float variable
    //if temperature text field is after input equal to 0, it will be stay at 0
    //else we're going to save dollar input into a variable
    
    //Create a variable where we take the input of our user and make it into an Int
    
    //if we have a dollar value higher than 0 -> we will save our equation for temperature into a variable
        //if temperature >= 100
            //alert will pop up telling the user to stay hydrated
    //else if they input 0 we will alert them and change the 0 to one. 
        //Nothing will happen if they leave it blank

    
    //after creating our four functions we will assign delegates to textUILabels in the ViewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.contentSize.height = 1000
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapGestureRecognized(sender: AnyObject) {
        dollar.resignFirstResponder()
        pesos.resignFirstResponder()
        //I will do this for every text field that requires output in order to be able to close the keyboard
    }

}

