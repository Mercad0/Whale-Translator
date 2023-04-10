//
//  ViewController.swift
//  Whale-Translator
//
//  Created by AM on 4/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var OutputLabel: UILabel!
    @IBOutlet weak var translateButton: UIButton!
    
    @IBOutlet weak var inputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func translateTheText(_ sender: Any) {
        let input: String = inputField.text ?? ""
        var output: String = ""
        
        for char in input {
        let lowerChar = char.lowercased()
         
         switch lowerChar {
           case "a", "i", "o":
           output += lowerChar.uppercased()
           case "e":
           output += "EE"
           case "u":
           output += "UU"
           default:
           continue
         }
        }
        OutputLabel.text = output
    }
    
}

