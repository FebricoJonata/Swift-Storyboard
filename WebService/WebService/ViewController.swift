//
//  ViewController.swift
//  WebService
//
//  Created by Febrico Jonata on 12/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var curhatTV: UITableView!
    
    var arrCurhat = [[String:Any]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        curhatTV.dataSource = self
        loadData()
    }
    
    func loadData(){
        let decoder = JSONDecoder()
        let urlCurhat = URL(string: "https://coba-api.douglasnugroho.com/getCurhat.php")!

        
        var request = URLRequest(url: urlCurhat)
        
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            
            let JSONCurhat = try! JSONSerialization.jsonObject(with: data!) as! [[String:Any]]
            
            // Filter out items with empty "name" and "curhat"
            let filteredCurhat = JSONCurhat.filter {
                let name = $0["name"] as? String ?? ""
                let curhat = $0["curhat"] as? String ?? ""
                return !name.isEmpty && !curhat.isEmpty && name.count > 4 && curhat.count > 4
            }
            
            self.arrCurhat = filteredCurhat
            DispatchQueue.main.async {
                self.curhatTV.reloadData()
            }
        }).resume()
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCurhat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        let name = arrCurhat[indexPath.row]["name"] as! String
        let curhat = arrCurhat[indexPath.row]["curhat"] as! String
        
        cell.textLabel?.text = "\(name) : \(curhat)"
        
        return cell
    }

}

