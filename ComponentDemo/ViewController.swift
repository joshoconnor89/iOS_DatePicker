//
//  ViewController.swift
//  ComponentDemo
//
//  Created by Joshua O'Connor on 1/21/15.
//  Copyright (c) 2015 Joshua O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Need outlet for date picker
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    //need action for button
    @IBAction func displayDate(sender: AnyObject) {
        //grab user chosen date
        var dateChosen = self.DatePicker.date
        //need objective-C library
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
            //prints date of week
        let day = formatter.stringFromDate(dateChosen)
            //prints hour, min, second
            //let day = formatter.dateFormat = "hh:mm:ss"
            let result = "That was a  \(day)"
        
        //Dynamic Alert, has alert with button and presents view Controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(myAlert, animated: true, completion: nil)
    
    
        
        
            //gives section where formatter is located, not a string
        //log it
        //button click, display value in variable on alert view
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

