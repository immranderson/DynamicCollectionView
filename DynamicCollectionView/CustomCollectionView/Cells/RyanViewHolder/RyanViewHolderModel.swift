//
//  RyanViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/14/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct RyanViewHolderModel : BaseViewHolderModel {
    
    
    func provideNibName() -> String {
        "RyanViewHolderCell"
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        theCollectionView.dequeueReusableCell(withReuseIdentifier: provideNibName(), for: indexPath) as! RyanViewHolderCell
    }
    
    
    let startText: String
    
    
}
