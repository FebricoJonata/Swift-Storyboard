//
//  MovieItemViewController.swift
//  BitzCinema
//
//  Created by Febrico Jonata on 15/10/23.
//

import UIKit

class MovieItemViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var MovieName: UILabel!

    @IBOutlet weak var Genre: UILabel!
    
    var name: String?
    var genre: String?
    var img: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ImageView.image = UIImage(named: img as! String)
        MovieName.text = name as! String
        Genre.text = "\(genre as! String)"
        
        
        
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
