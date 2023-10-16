//
//  MovieViewController.swift
//  BitzCinema
//
//  Created by Febrico Jonata on 15/10/23.
//

import UIKit

class MovieViewController: UIViewController {
    
    var MovieList = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initMovie(){
        MovieList.append(Movie(name: "Frozen", genre: "Roman", image: "img"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! MovieItemViewController
        
        initMovie()
        
        if segue.identifier == "item1"{
            dest.name = MovieList[0].name
            dest.genre = MovieList[0].genre
            dest.img = MovieList[0].image
        }else if segue.identifier == "item2"{
            dest.name = MovieList[0].name
            dest.genre = MovieList[0].genre
            dest.img = MovieList[0].image
        }else{
            dest.name = MovieList[0].name
            dest.genre = MovieList[0].genre
            dest.img = MovieList[0].image
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
