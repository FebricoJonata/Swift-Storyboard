//
//  ViewController.swift
//  View Hirearchy
//
//  Created by Febrico Jonata on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var arrFood = [FoodItem]()

    @IBOutlet weak var TotalPrice: UILabel!
//    var counter: Int
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func initFood(){
        arrFood.append(FoodItem(name:  "Pizza", price: 10000, imageName: "pizza"))
        arrFood.append(FoodItem(name:  "Cola", price: 10000, imageName: "cola"))
        arrFood.append(FoodItem(name:  "Salad", price: 10000, imageName: "salad"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! FoodItemViewController
        
        initFood()
        if segue.identifier == "segue1"{
            dest.name = arrFood[0].name
            dest.price = arrFood[0].price
            dest.img = arrFood[0].imageName
        }else if segue.identifier == "segue2"{
            dest.name = arrFood[1].name
            dest.price = arrFood[1].price
            dest.img = arrFood[1].imageName
        }else{
            dest.name = arrFood[2].name
            dest.price = arrFood[2].price
            dest.img = arrFood[2].imageName
        }
        
        
    }
    
}

