//
//  NumberViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct NumberViewHolderModel: BaseViewHolderModel {
    
    
    let identifier = "NumberViewHolderCell"
    
    let number: Int
    

    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            theCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! NumberViewHolderCell
        }
    
    func provideNibName() -> String {
        identifier
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }

    
}
