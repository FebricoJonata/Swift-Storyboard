//
//  FoodItemViewController.swift
//  BitzCinema
//
//  Created by Febrico Jonata on 15/10/23.
//

import UIKit

class FoodItemViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var FoodName: UILabel!

    @IBOutlet weak var FoodPrice: UILabel!
    
    var foodName: String?
    var foodPrice: Int?
    var img: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ImageView.image = UIImage(named: img as! String)
        FoodName.text = foodName as! String
        FoodPrice.text = "\(foodPrice as! Int)"
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
