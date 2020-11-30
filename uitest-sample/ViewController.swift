//
//  ViewController.swift
//  uitest-sample
//
//  Created by thirata on 2020/02/19.
//  Copyright © 2020 thirata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tapCount = 0
    @IBOutlet weak var textField1: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapButton1(_ sender: UIButton) {
        tapCount += 1
        textField1.text = "tap: \(tapCount)"
    }

    @IBAction func tapButton2(_ sender: UIButton) {
        tapCount = 0
        textField1.text = ""
    }
}

