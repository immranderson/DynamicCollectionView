//
//  NumberViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class NumberViewHolderModel: BaseViewHolderModel {
    
    let identifier = "NumberViewHolderCell"
    
    let number: Int
    
    init(number: Int) {
        self.number = number
    }

    override func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            theCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! NumberViewHolderCell
        }
    
    override func provideNibName() -> String {
        identifier
    }

    
}
