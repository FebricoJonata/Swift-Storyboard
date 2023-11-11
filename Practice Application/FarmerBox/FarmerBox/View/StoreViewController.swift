//
//  StoreViewController.swift
//  FarmerBox
//
//  Created by Febrico Jonata on 16/10/23.
//

import UIKit

class StoreViewController: UIViewController {
    
    var itemList = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initItem(){
        itemList.append(Item(name: "Test", price: 90000, image: "img"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier != "goCart"){
            
            let dest = segue.destination as! StoreItemViewController
            
            initItem()
            var idx = 0
            if segue.identifier == "item1"{
                dest.img = itemList[0].image
                dest.name = itemList[0].name
                dest.price = itemList[0].price
                idx = 0
            }else if segue.identifier == "item2"{
                dest.img = itemList[0].image
                dest.name = itemList[0].name
                dest.price = itemList[0].price
                idx = 1
            }else if segue.identifier == "item3"{
                dest.img = itemList[0].image
                dest.name = itemList[0].name
                dest.price = itemList[0].price
                idx = 2
            }else if segue.identifier == "item4"{
                dest.img = itemList[0].image
                dest.name = itemList[0].name
                dest.price = itemList[0].price
                
                idx = 3
            }
            dest.idx = idx
        }

    }
    
    
    @IBAction func toCart(_ sender: Any) {
        performSegue(withIdentifier: "goCart", sender: self)
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
