//
//  ViewController.swift
//  DemoUserDefaultForBeginners
//
//  Created by Saahil Kaushal on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // used for Showing save data
        let value = UserDefaults.standard.string(forKey: "userName")
        
        if value != nil
        {
            myLabel.text = "Hello \(value!)"
        }
        
        
    }
   // Save the Data in UserDefault
    @IBAction func showBtn(_ sender: UIButton) {
        UserDefaults.standard.set(myText.text!, forKey: "userName")
        
        let alertController = UIAlertController(title: "Save", message: "your data is saved sucessfully", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default){(action)
            in
            print("Data saved Successfully")
        }
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
    
}

