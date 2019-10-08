//
//  DogTableViewCell.swift
//  xibs-and-programmatic-cells
//
//  Created by David Rifkin on 10/8/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    var breedLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(breedLabel)
        //configure Label's constraints
        configureConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func configureConstraints() {
        breedLabel.translatesAutoresizingMaskIntoConstraints = false
        breedLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        
        breedLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
    }
}
