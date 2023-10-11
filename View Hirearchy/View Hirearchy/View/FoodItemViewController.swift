//
//  FoodItemViewController.swift
//  View Hirearchy
//
//  Created by Febrico Jonata on 11/10/23.
//

import UIKit

class FoodItemViewController: UIViewController {

    @IBOutlet weak var Quantity: UILabel!
    @IBOutlet weak var PriceLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    var name: String?
    var price: Int?
    var img: String?
    var quantity: Int = 1
    var totalPrice: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ImageView.image = UIImage(named: img as! String)
        NameLbl.text = "\(name as! String)"
        PriceLbl.text = "Rp. \(price as! Int)"
        totalPrice = price!
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let alert = UIAlertController(title: "Payment", message: "Rp. \(totalPrice)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)

    }
    
 
    @IBAction func decrement(_ sender: Any) {
        if quantity > 0{
            quantity -= 1
            totalPrice = price! * quantity
            PriceLbl.text = "Rp. \(totalPrice as Int)"
            Quantity.text = "\(quantity as Int)"
        }
    }
    
    
    @IBAction func increment(_ sender: Any) {
        quantity += 1
        totalPrice = price! * quantity
        PriceLbl.text = "Rp. \(totalPrice as Int)"
        Quantity.text = "\(quantity as Int)"
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
