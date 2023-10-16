//
//  FoodViewController.swift
//  BitzCinema
//
//  Created by Febrico Jonata on 15/10/23.
//

import UIKit

class FoodViewController: UIViewController {
    
    var FoodItem = [Food]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func initFood(){
        FoodItem.append(Food(name: "Test", price: 13222, image: "img"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! FoodItemViewController
        
        initFood()
        
        if segue.identifier == "item1"{
            dest.foodName = FoodItem[0].name
            dest.foodPrice = FoodItem[0].price
            dest.img = FoodItem[0].image
        }else if segue.identifier == "item2"{
            dest.foodName = FoodItem[0].name
            dest.foodPrice = FoodItem[0].price
            dest.img = FoodItem[0].image
        }else{
            dest.foodName = FoodItem[0].name
            dest.foodPrice = FoodItem[0].price
            dest.img = FoodItem[0].image
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
