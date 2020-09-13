//
//  MyCustomCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class MyCustomCell: UICollectionViewCell {

    @IBOutlet weak var labelView: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLabel(text: String) {
        labelView.text = text
    }

}
