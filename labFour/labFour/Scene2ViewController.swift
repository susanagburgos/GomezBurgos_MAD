//
//  Scene2ViewController.swift
//  labFour
//
//  Created by Susana Gomez-Burgos on 10/5/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    
    override func viewDidLoad() {
       
        //assign self delegates to my text fields
        firstName.delegate=self
        lastName.delegate=self
        ageField.delegate=self
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "aboutMe"{
            var scene1ViewController = segue.destinationViewController as! ViewController
            
            //check for text in textfields
            if firstName.text!.isEmpty == false { //if text field is not empty
                scene1ViewController.user.first=firstName.text
                //variable that calls on destination.user.variable in class aboutMe.swift = textField variable.text
            }
            if lastName.text!.isEmpty == false {
               scene1ViewController.user.last=lastName.text
            }
            if ageField.text!.isEmpty == false {
                scene1ViewController.user.age=ageField.text
            }
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
