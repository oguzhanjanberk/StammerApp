//
//  SecondViewController.swift
//  App
//
//  Created by Oguzhan Janberk on 27/01/2019.
//  Copyright © 2019 Oguzhan Janberk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.input.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    //connects the textfield
    @IBOutlet weak var input2: UITextField!
    
    //connects the textfield
    @IBOutlet weak var input: UITextField!
    
    //connects the label
    @IBOutlet weak var output1: UILabel!
    
    //connects the label
    @IBOutlet weak var output: UILabel!
    
    //entering text and saving
    

    //connects the button, allows to input text
    @IBAction func Enter(_ sender: Any) {
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "text")
        input.text = ""
       
    }
    
    //connects the button, allows to input text

    @IBAction func button(_ sender: Any) {
        output1.text = input2.text
        UserDefaults.standard.set(input2.text, forKey: "text")
        input2.text = ""
    }
    
    
   //displays the output
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "text") as? String
        {
           output.text = x
            output1.text = x
           
        }
    }
    
    
    // hides keyboard when the user clicks out of it 
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hides keyboard when clicked on return key on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return (true)
    }
    }

