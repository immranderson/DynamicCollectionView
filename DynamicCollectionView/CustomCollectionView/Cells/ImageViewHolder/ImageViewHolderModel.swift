//
//  ImageViewHolder.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ImageViewHolderModel: BaseViewHolderModel {
    
    let identifier = "ImageViewHolderCell"
    
    let imageURL: String
    let labelText: String
    
    init(imageURL: String, labelText: String) {
        self.imageURL = imageURL
        self.labelText = labelText
    }
    
    override func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        
        let imageViewHolderCell = theCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! ImageViewHolderCell
        
        
        return imageViewHolderCell
    }
    
    override func provideNibName() -> String {
        identifier
    }
    
}
