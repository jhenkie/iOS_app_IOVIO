//
//  ViewController.swift
//  iovio
//
//  Created by Johannes Henkie on 26/07/2019.
//  Copyright © 2018 Johannes Henkie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var passInput: UITextField!

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var locationText: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var viewBottom: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginButton.layer.borderColor = UIColor.darkGray.cgColor
        viewLogin.layer.borderColor = UIColor.darkGray.cgColor
        viewBottom.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @objc func handleTap(gestureRecognizer: UIGestureRecognizer) {
        self.performSegue(withIdentifier: "location", sender: self)
    }

    @IBAction func checkLogin(_ sender: UIButton) {
        if userInput.text == "" {
            errorLabel.text = "Please fill in username"
        } else if passInput.text == "" {
            errorLabel.text = "Please fill in password"
        } else if userInput.text != "admin" || passInput.text != "admin" {
            errorLabel.text = "Invalid login"
        } else {
            self.performSegue(withIdentifier: "profile", sender: self)
        }
    }
}

