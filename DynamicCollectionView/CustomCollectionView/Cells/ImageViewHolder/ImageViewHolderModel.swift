//
//  ImageViewHolder.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct ImageViewHolderModel: BaseViewHolderModel {
    
    let imageURL: String
    let labelText: String
    
    func provideNibName() -> String {
        "ImageViewHolderCell"
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
    
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
                let imageViewHolderCell = theCollectionView.dequeueReusableCell(withReuseIdentifier: provideNibName(), for: indexPath) as! ImageViewHolderCell
                return imageViewHolderCell
    }
    
}
