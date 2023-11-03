//
//  TableViewCell.swift
//  TableView
//
//  Created by Febrico Jonata on 24/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
