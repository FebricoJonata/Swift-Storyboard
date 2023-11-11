//
//  HomeItemViewController.swift
//  IOSBook
//
//  Created by Febrico Jonata on 13/10/23.
//

import UIKit

class HomeItemViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Quantity: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    
    var quantity: Int = 0
    var img: String?
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ImageView.image = UIImage(named: "img" as! String)
        NameLbl.text = "\(name as! String)"
    }
    

    @IBAction func increment(_ sender: Any) {
        quantity += 1
        Quantity.text = "\(quantity)"
    }
    
    
    @IBAction func decrement(_ sender: Any) {
        if quantity > 0{
            quantity -= 1
            Quantity.text = "\(quantity)"
        }
        
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
