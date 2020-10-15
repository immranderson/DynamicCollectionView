//
//  NumberViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class NumberViewHolderCell: UICollectionViewCell, BaseViewHolder {
    
    var actionListener: ((Any) -> Void)?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindData(data: BaseViewHolderModel) {
                let numberHolderModel = (data as! NumberViewHolderModel)
        
                numberLabel.text = "NUMBER: \(numberHolderModel.number)"
    }


}
