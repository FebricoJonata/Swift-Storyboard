//
//  HomeViewController.swift
//  IOSBook
//
//  Created by Febrico Jonata on 12/10/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var ItemList = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    func initItem(){
        ItemList.append(Item(name: "Febrico Jonata", image: "img"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! HomeItemViewController
        
        initItem()
        if segue.identifier == "item1"{
            dest.img = ItemList[0].image
            dest.name = ItemList[0].name
        }else if segue.identifier == "item2"{
            dest.img = ItemList[0].image
            dest.name = ItemList[0].name
        }else{
            dest.img = ItemList[0].image
            dest.name = ItemList[0].name
        }
    }

}
