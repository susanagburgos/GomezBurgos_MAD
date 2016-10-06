//
//  ViewController.swift
//  labFour
//
//  Created by Susana Gomez-Burgos on 10/5/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var user=aboutMe() //creating an instance of the class we just created under aboutMe.swift

    //unwind action - passing value from user input in scene two through class variable to show in scene one vars 
    @IBAction func unwindSegue (segue:UIStoryboardSegue){
        firstNameLabel.text=user.first //name of label outlet.text=user.first (var created in class)
        lastNameLabel.text=user.last
        ageLabel.text=user.age
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

