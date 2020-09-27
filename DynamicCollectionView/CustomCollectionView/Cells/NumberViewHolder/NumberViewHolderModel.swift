//
//  NumberViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct NumberViewHolderModel: BaseViewHolderModel {
    
    let number: Int
    
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            theCollectionView.dequeueReusableCell(withReuseIdentifier: provideNibName(), for: indexPath) as! NumberViewHolderCell
        }
    
    func provideNibName() -> String {
        "NumberViewHolderCell"
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }

    
}
