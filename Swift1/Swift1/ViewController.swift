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
        tField.delegate = self
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    
    @IBAction func showSecond(_ sender: Any) {
        performSegue(withIdentifier: "showSecond", sender: nil)
    }

    @IBAction func clickTapped(_ sender: Any) {
        textMessageLabel.text = tField.text!
        tField.resignFirstResponder()
        
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textMessageLabel.text = "begin editing"
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textMessageLabel.text = "end editing"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textMessageLabel.text = "will change '\(string)'"
        return string != "h"
    }
}

