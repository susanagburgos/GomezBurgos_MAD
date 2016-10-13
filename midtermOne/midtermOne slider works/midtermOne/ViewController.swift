//
//  ViewController.swift
//  midtermOne
//
//  Created by Susana Gomez-Burgos on 10/13/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var workoutTimeIn: UITextField!
    @IBOutlet weak var caloriesBurned: UILabel!
    @IBOutlet weak var milesRan: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
   
    @IBAction func sliderValue(sender: UISlider) {
        /*var myTime : Float
        var ranMiles : Float
        
        if workoutTimeIn.text!.isEmpty{
            myTime = 0.0
        } else {
            myTime = Float(workoutTimeIn.text!)!
        }
        let ranMiles = myTime/10.0
        let hoursRan = myTime/60.0
        let caloriesBurned = 600*hoursRan*/
        
        let workoutsWeek = sender.value
        sliderLabel.text=String(format: "%.0f",workoutsWeek)
    }
    
    @IBAction func workoutButton(sender: UIButton) {
        updateWorkout()
    }
   
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    func updateWorkout() {
        var myTime:Float
        
        if workoutTimeIn.text!.isEmpty{
            myTime = 0.0
        } else {
            myTime = Float(workoutTimeIn.text!)!
        }
        
        let ranMiles = myTime/10.0 //label should display this
        let hoursRan = myTime/60.0
        let caloriesGone = 600*hoursRan //label should display this
        
        let numberFormat = NSNumberFormatter()
        numberFormat.numberStyle=NSNumberFormatterStyle.DecimalStyle
        milesRan.text = numberFormat.stringFromNumber(ranMiles)
        caloriesBurned.text = numberFormat.stringFromNumber(caloriesGone)
    }
    
    
    /*func textFieldDidEndEditing(textField: UITextField) {
        updateWorkout()
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        workoutTimeIn.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

