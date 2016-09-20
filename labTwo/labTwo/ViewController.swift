//
//  ViewController.swift
//  labTwo
//
//  Created by Susana Gomez-Burgos on 9/19/16.
//  Copyright © 2016 Susana Gomez-Burgos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var controller: UISegmentedControl!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sizechangeLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var flowersImg: UIImageView!
    
    func updateImage(){
        if controller.selectedSegmentIndex == 0 {
            titleLabel.text="sunflower"
            titleLabel.font=UIFont(name: "Baskerville",size: titleLabel.font.pointSize)
            titleLabel.textColor=UIColor.blackColor()
            flowersImg.image=UIImage(named: "sunflower")
        }
        else if controller.selectedSegmentIndex == 1{
            titleLabel.text="chamomile"
            titleLabel.font=UIFont(name: "HelveticaNeue",size: titleLabel.font.pointSize)
            titleLabel.textColor=UIColor.yellowColor()
            flowersImg.image=UIImage(named: "chamomile")
        }
    }
    
    func updateCaps(){
        if mySwitch.on{
            sizechangeLabel.text=sizechangeLabel.text?.uppercaseString
        }else{
            sizechangeLabel.text=sizechangeLabel.text?.lowercaseString
        }
    }
    
    @IBAction func onSliderChanged(sender: UISlider) {
        let fontSize = sender.value //float
        sliderLabel.text=String(format: "%.0f", fontSize)
        //convert float to string
        let fontSizeCGFloat=CGFloat(fontSize)
        //convert float to CGFloat
        sizechangeLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
        //created UIFont and assigned to font property
        
    }
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
        //this will allow us to call this functions when we change "screen"
    }
    
    @IBAction func switchAct(sender: UISwitch) {
        updateCaps()
        //this will change the capitalization of title label when I turn switch on or off
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

