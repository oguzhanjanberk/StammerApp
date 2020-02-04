

import UIKit
import AVFoundation

class FourthViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var input3: UITextField!
    
    @IBOutlet weak var output3: UILabel!
    
    
    
    @IBAction func comment(_ sender: Any) {
        output3.text = input3.text
        UserDefaults.standard.set(input3.text, forKey: "text")
        input3.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "text") as? String
        {
            output3.text = x
            
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hides keyboard when clicked on return key on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input3.resignFirstResponder()
        return (true)
    }
}

