//
//  ViewController.swift
//  labOne
//
//  Created by Susana Gomez-Burgos on 9/7/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
        //allow us to reference other pictures
    
    @IBAction func sadButton(sender: UIButton) {
       if sender.currentTitle=="Happy times" {
            coffeeFriends.image=UIImage(named: "fullCoffee.png")
            myLabel.text="Fresh Coffee Happy"
            //will decide the action of each button
        }
       else if sender.currentTitle == "Sad times"{
            coffeeFriends.image=UIImage(named: "emptyCoffee.png")
            myLabel.text="No Coffee Sad"
        }
    }
    
    @IBOutlet weak var coffeeFriends: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

