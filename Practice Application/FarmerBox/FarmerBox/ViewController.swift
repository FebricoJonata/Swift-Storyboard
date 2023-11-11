//
//  ViewController.swift
//  FarmerBox
//
//  Created by Febrico Jonata on 16/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GenderInp: UISegmentedControl!
    @IBOutlet weak var EmailInp: UITextField!
    @IBOutlet weak var PasswordInp: UITextField!
    @IBOutlet weak var NameInp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    

    @IBAction func Register(_ sender: Any) {
        
        if NameInp.text!.isEmpty || PasswordInp.text!.isEmpty ||
            EmailInp.text!.isEmpty {
            alertMessage(message: "Text Input Can't Be Empty")
        }else if NameInp.text!.count <= 2{
            alertMessage(message: "Name can't be < 2 characters")
        }else if !EmailInp.text!.contains("@") && !EmailInp.text!.hasSuffix(".com"){
            alertMessage(message: "Email must contains '@' and end with .com")
        }else if PasswordInp.text!.ranges(of: "[a-zA-Z0-9]") == nil{
            alertMessage(message: "Password Must be alphanumeric")
        }else{
            performSegue(withIdentifier: "goStore", sender: self)
        }
    }
    
    func alertMessage(message: String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}

