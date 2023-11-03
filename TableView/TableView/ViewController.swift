//
//  ViewController.swift
//  TableView
//
//  Created by Febrico Jonata on 24/10/23.
//

import UIKit

struct Note {
    var title: String?
}

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var TableViewNote: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNote.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.TitleLbl.text = arrNote[indexPath.row].title
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true;
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrNote.remove(at: indexPath.row)
            TableViewNote.reloadData()
        }
    }
    
    var arrNote = [Note]()
    
    func initNote(){
        arrNote.append(Note(title: "Ini Judul 1"))
        arrNote.append(Note(title: "Ini Judul 2"))
        arrNote.append(Note(title: "Ini Judul 3"))
        arrNote.append(Note(title: "Ini Judul 4"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initNote()
        TableViewNote.dataSource = self
    }


}

