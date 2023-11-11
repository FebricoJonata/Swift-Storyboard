//
//  CartViewController.swift
//  FarmerBox
//
//  Created by Febrico Jonata on 16/10/23.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var qty1: UILabel!
    @IBOutlet weak var qty2: UILabel!
    @IBOutlet weak var qty3: UILabel!
    @IBOutlet weak var qty4: UILabel!
    
    @IBOutlet weak var totalPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        qty1.text = "Qty. \(String(Data.quantity[0]))"
        qty2.text = "Qty. \(String(Data.quantity[1]))"
        qty3.text = "Qty. \(String(Data.quantity[2]))"
        qty4.text = "Qty. \(String(Data.quantity[3]))"
        
        let totalQty = Data.price[0] + Data.price[1] + Data.price[2] + Data.price[3]
        
        totalPrice.text = "Total Price : Rp. \(String(totalQty))"
        
    }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    
    @IBAction func toPayment(_ sender: Any) {
        performSegue(withIdentifier: "toPayment", sender: self)
    }
    
}
