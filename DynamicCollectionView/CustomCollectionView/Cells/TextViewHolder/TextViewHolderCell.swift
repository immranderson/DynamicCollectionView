//
//  TextViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class TextViewHolderCell: UICollectionViewCell, BaseViewHolder {
    
    var actionListener: ((Any) -> Void)?

    
    @IBOutlet weak var someLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func bindData(data: BaseViewHolderModel) {
        let textHolderModel = (data as! TextViewHolderModel)
        someLabel.text = textHolderModel.text
    }
    
    func setLabelText(text: String) {
        someLabel.text = text
    }

}
