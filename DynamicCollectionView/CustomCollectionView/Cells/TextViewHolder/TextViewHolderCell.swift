//
//  TextViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class TextViewHolderCell: BaseViewHolder<TextViewHolderModel> {

    
    
    @IBOutlet weak var someLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func bindData(data: TextViewHolderModel) {
        someLabel.text = data.text
    }
    
    func setLabelText(text: String) {
        someLabel.text = text
    }

}