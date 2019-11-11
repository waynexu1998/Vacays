//
//  TableViewCell.swift
//  Vacays
//
//  Created by Jiangyong Xu on 11/10/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var vacayTitle: UILabel!
    @IBOutlet weak var vacayDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
