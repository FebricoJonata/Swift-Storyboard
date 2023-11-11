//
//  ViewController.swift
//  IOSBook
//
//  Created by Febrico Jonata on 12/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PasswordInput: UITextField!
    @IBOutlet weak var NameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func onTap(_ sender: Any) {
        if NameInput.text! != "test" && PasswordInput.text! != "test"{
            let alert = UIAlertController(title: "Error", message: "Invalid Crendentials", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "OK", style: .default)
            
            alert.addAction(actionOK)
            present(alert, animated: true)
        }
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
    
    @IBAction func unwindToLogin(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
        
    }
    
}

