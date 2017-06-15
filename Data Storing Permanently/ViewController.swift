//
//  ViewController.swift
//  Data Storing Permanently
//
//  Created by Student04 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // implicit variable declaration
    var strPhone = ""
    
    
    
    
    
    @IBOutlet weak var showPhoneLabel: UILabel!
    
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        // Get value from TextField
        strPhone = phoneTextField.text!
        
        // Echo input
        print("Phone input ==> \(strPhone)")
        
        // Save to Permanent storage
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        
        // as? ==> type casting, as? String ==> cast data object to String
        if let myPermanent = strPermanentPhone as? String{
            print("Result from Permanent ==> \(myPermanent)")
            showPhoneLabel.text = myPermanent
        }
        
    } // End Main method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


} // End class

