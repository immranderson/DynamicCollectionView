//
//  TextViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct TextViewHolderModel: BaseViewHolderModel {
    
    let identifier = "TextViewHolderCell"

        let text: String
        
        init(text: String) {
            self.text = text
        }
        
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            theCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TextViewHolderCell
        }
    
    func provideNibName() -> String {
        identifier
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }

}

