//
//  StoreItemViewController.swift
//  FarmerBox
//
//  Created by Febrico Jonata on 16/10/23.
//

import UIKit

class StoreItemViewController: UIViewController {

    @IBOutlet weak var QtyLbl: UILabel!
    @IBOutlet weak var PriceLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    var img: String?
    var name: String?
    var price: Int?
    var idx: Int?
    var qty: Int?
    var totalPrice: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ImageView.image = UIImage(named: img as! String)
        NameLbl.text = name as! String
        PriceLbl.text = "\(price as! Int)"
    }
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        
        qty = Int(sender.value)
        QtyLbl.text = String(Int(sender.value))
        if sender.value < 0{
            totalPrice = price
        }else{
            totalPrice = price!*qty!
        }
    
        PriceLbl.text = String(totalPrice!)
    }
    
    
    @IBAction func addToCart(_ sender: UIButton) {
        Data.quantity[idx!] = Data.quantity[idx!] + qty!
        Data.price[idx!] = totalPrice!
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
