//
//  ViewController.swift
//  Storage
//
//  Created by Febrico Jonata on 17/11/23.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrName = [String]()
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var TableView: UITableView!
    var context:NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.dataSource = self
        TableView.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        loadData()
    }
    
    func saveData(){
        let name = NameTextField.text as! String
        
        let entity = NSEntityDescription.entity(forEntityName: "Contacts", in: context)
        
        let newContact = NSManagedObject(entity: entity as! NSEntityDescription, insertInto: context)
        newContact.setValue(name, forKey: "name")
        do{
            try context.save()
            loadData()
        }catch{
            print("Save Failed")
        }
        
        
    }
    
    func loadData(){
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        arrName.removeAll()
        do{
            let result = try context.fetch(request) as! [NSManagedObject]
            
            for data in result{
                arrName.append(data.value(forKey: "name") as! String)
            }
            
            TableView.reloadData()
        }catch{
            print("Failed to Load Data")
        }
        
    }
    
    func updateData(cell: TableViewCell, indexPath: IndexPath){
        let oldValue = arrName[indexPath.row]
        let newValue = cell.CellTextField.text as! String
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        request.predicate = NSPredicate(format: "name==%@", oldValue)
        
        do{
            let result = try context.fetch(request) as! [NSManagedObject]
            
            for data in result{
                data.setValue(newValue, forKey: "name")
            }
            try context.save()
            loadData()
        }catch{
            print("Update Failed")
        }
    }
    
    func deleteData(indexPath: IndexPath){
        let value = arrName[indexPath.row]
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        request.predicate = NSPredicate(format: "name==%@", value)
        
        do{
            let result = try context.fetch(request) as! [NSManagedObject]
            
            for data in result{
                context.delete(data)
            }
            
            try context.save()
            loadData()
        }catch{
            print("Delete Failed")
        }
        
    }
    
    
    @IBAction func Save(_ sender: Any) {
        saveData()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            deleteData(indexPath: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.CellTextField.text = arrName[indexPath.row]
        cell.onUpdateHandler = {self.updateData(cell: cell, indexPath: indexPath)}
        
        return cell
    }


}

