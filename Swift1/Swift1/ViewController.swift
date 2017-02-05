//
//  ViewController.swift
//  Swift1
//
//  Created by Olga Geets on 05/02/17.
//  Copyright © 2017 Sberbank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tField: UITextField!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var textMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickTapped(_ sender: Any) {
        textMessageLabel.text = tField.text!
        
    }
}

