//
//  RyanViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/14/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class RyanViewHolderCell: UICollectionViewCell, BaseViewHolder {

    @IBOutlet weak var ryanTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindData(data: BaseViewHolderModel) {
        
        let ryanModelData = data as! RyanViewHolderModel
        ryanTextField.text = ryanModelData.startText
        
    }
    

}
