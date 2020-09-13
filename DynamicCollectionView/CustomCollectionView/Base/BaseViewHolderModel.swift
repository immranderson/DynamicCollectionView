//
//  BaseViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit


@objc class BaseViewHolderModel: NSObject  {
    
    func provideNibName() -> String {
        return "STUB"
    }
    
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        return theCollectionView.dequeueReusableCell(withReuseIdentifier: "STUB", for: indexPath)
    }
    
}

