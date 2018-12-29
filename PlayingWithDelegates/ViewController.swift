//
//  ViewController.swift
//  PlayingWithDelegates
//
//  Created by Jasmeet Singh on 2018-12-29.
//  Copyright © 2018 Jusmyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var toggleTextField: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let moneyDelegate = CurrencyDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeTextField.delegate = zipCodeDelegate
        self.moneyTextField.delegate = moneyDelegate
        
        toggleSwitch.setOn(false, animated: false)
        toggleTextField.placeholder = "Flip switch to enable typing"
    }

    @IBAction func toggleSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            toggleTextField.backgroundColor = UIColor.white
            toggleTextField.isUserInteractionEnabled = true
            toggleTextField.placeholder = "Typing Enabled, go ahead!"
        }
        else {
            toggleTextField.backgroundColor = UIColor.red
            toggleTextField.isUserInteractionEnabled = false
            toggleTextField.text = ""
            toggleTextField.placeholder = "Flip switch to enable typing"
        }
    }
    
}

