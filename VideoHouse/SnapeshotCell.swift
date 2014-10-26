//
//  SnapeshotCell.swift
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class SnapeshotCell: UITableViewCell {

    @IBOutlet var snapeshotImage: UIImageView!
    @IBOutlet var createAtLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
