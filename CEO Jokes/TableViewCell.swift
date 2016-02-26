//
//  TableViewCell.swift
//  CEO Jokes
//
//  Created by Mansi Shah on 2/24/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell {
    
    var cost = ""
    
    @IBAction func Buy(sender: AnyObject) {
        price.text = cost
    }

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var ProductName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
