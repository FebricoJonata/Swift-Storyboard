//
//  ViewController.swift
//  Segue
//
//  Created by Febrico Jonata on 11/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goHome(_ sender: Any) {
        performSegue(withIdentifier: "goHome", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goHome"{
            let dest = segue.destination as! HomeViewController
            
            
            if InputTxt.text!.isEmpty || InputTxt.text! == "Hack" {
                var message = UIAlertController(title: "Message", message: "Input can't be empty", preferredStyle: .alert)
                var action = UIAlertAction(title: "OK", style: .default)
                
                message.addAction(action)
                
                self.present(message, animated: true)
            }
            
            dest.HomeLblTxt = InputTxt.text
        }
    }
    
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as? HomeViewController
        // Use data from the view controller which initiated the unwind segue
        if sourceViewController != nil{
            InputTxt.text = sourceViewController?.InputField.text
        }
    }
}

