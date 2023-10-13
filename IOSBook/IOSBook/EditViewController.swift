//
//  EditViewController.swift
//  IOSBook
//
//  Created by Febrico Jonata on 13/10/23.
//

import UIKit

class EditViewController: UIViewController {

  
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var University: UILabel!
    
    @IBOutlet weak var ProfileImageView: UIImageView!
    
    @IBOutlet weak var UniversityInput: UITextField!
    @IBOutlet weak var NameInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ProfileImageView.image = UIImage(named: "img")
        NameInput.text = NameLbl.text
        UniversityInput.text = University.text
    }
    
    
    func write(){
        NameLbl.text = NameInput.text
        University.text = UniversityInput.text
    }
    
    @IBAction func EditProfile(_ sender: Any) {
        let alert = UIAlertController(title: "Confirmation", message: "Are You sure to update profile?", preferredStyle: .alert)
        let yes = UIAlertAction(title: "Yes", style: .default, handler: {action in self.write()})
        let no = UIAlertAction(title: "No", style: .destructive, handler: nil)
        
        alert.addAction(yes)
        alert.addAction(no)
        present(alert, animated: true)
        

        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
