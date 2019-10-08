//
//  DogTableViewCell.swift
//  xibs-and-programmatic-cells
//
//  Created by David Rifkin on 10/8/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    @IBOutlet weak var breedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
