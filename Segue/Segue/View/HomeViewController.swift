//
//  HomeViewController.swift
//  Segue
//
//  Created by Febrico Jonata on 11/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var InputField: UITextField!
    @IBOutlet weak var HomeLbl: UILabel!
    var HomeLblTxt: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeLbl.text = HomeLblTxt as! String
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goTabBar(_ sender: Any) {
        performSegue(withIdentifier: "goTabBar", sender: self)
    }
}
