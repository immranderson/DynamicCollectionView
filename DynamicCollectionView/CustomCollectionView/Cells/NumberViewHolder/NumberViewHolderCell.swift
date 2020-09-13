//
//  NumberViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class NumberViewHolderCell: BaseViewHolder<NumberViewHolderModel> {

    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func bindData(data: BaseViewHolderModel) {
        let numberHolderModel = (data as! NumberViewHolderModel)
        
        numberLabel.text = "NUMBER: \(numberHolderModel.number)"
    }

}
