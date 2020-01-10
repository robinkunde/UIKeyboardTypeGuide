//
//  ViewController.swift
//  UIKeyboardTypeGuide
//
//  Created by Robin Kunde on 11/5/19.
//  Copyright © 2019 Recoursive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        textField.keyboardType = .asciiCapableNumberPad
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        textField.becomeFirstResponder()
    }

    @IBAction func nextKeyboardType(_ sender: Any) {
        textField.resignFirstResponder()
        let current = textField.keyboardType

        if current == .asciiCapableNumberPad {
            textField.keyboardType = UIKeyboardType.default
        } else {
            textField.keyboardType = UIKeyboardType(rawValue: (current.rawValue + 1))!
        }

        print("\(textField.keyboardType)")
    }
}

