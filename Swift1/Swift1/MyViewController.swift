//
//  MyViewController.swift
//  Swift1
//
//  Created by Olga Geets on 05/02/17.
//  Copyright © 2017 Sberbank. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBAction func backTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
