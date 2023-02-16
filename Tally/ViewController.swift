//
//  ViewController.swift
//  Tally
//
//  Created by David Granger on 2/16/23.
//

import UIKit

var cookieInterval: Int = 0
var cookieNameFromPreviousPage: String = ""

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameCookieText.delegate = self
    }
    
    @IBOutlet weak var nameCookieText: UITextField!
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        cookieNameFromPreviousPage = textField.text ?? ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return nameCookieText.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func changeCount(_ sender: UIStepper) {
        cookieInterval = Int(sender.value)
        counterLabel.text = String(cookieInterval)
    }
}

