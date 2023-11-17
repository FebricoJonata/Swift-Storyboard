//
//  TableViewCell.swift
//  Storage
//
//  Created by Febrico Jonata on 17/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var CellTextField: UITextField!
    
    var onUpdateHandler = {}
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func Update(_ sender: Any) {
        onUpdateHandler()
    }
}
