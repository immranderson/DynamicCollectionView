//
//  TextViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class TextViewHolderModel: BaseViewHolderModel {
    
    let identifier = "TextViewHolderCell"

        let text: String
        
        init(text: String) {
            self.text = text
        }
        
    override func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            theCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TextViewHolderCell
        }
    
    override func provideNibName() -> String {
        identifier
    }

    }

