//
//  ImageViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit
import Kingfisher


class ImageViewHolderCell: BaseViewHolder<ImageViewHolderModel> {

    @IBOutlet weak var someImageView: UIImageView!
    @IBOutlet weak var someImageLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func bindData(data: BaseViewHolderModel) {
        let imageViewHolderModel = (data as! ImageViewHolderModel)
        
        someImageLabel.text = imageViewHolderModel.labelText
        
        let imageUrl = URL(string: imageViewHolderModel.imageURL)
        someImageView.kf.setImage(with: imageUrl)
        
    }

}
