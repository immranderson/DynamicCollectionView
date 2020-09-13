//
//  TextViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class TextViewHolderModel: BaseViewHolderModel {
    
    func createViewHolder<T>(theCollectionView: UICollectionView, indexPath: IndexPath) -> BaseViewHolder<T> where T : BaseViewHolderModel, T : BaseViewHolderModelProtocol {
        theCollectionView.dequeueReusableCell(withReuseIdentifier: "TextViewHolderCell", for: indexPath) as! BaseViewHolder<T>
    }
    
    
        let text: String
        
        init(text: String) {
            self.text = text
        }
        
//        func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
//            theCollectionView.dequeueReusableCell(withReuseIdentifier: "TextViewHolderCell", for: indexPath) as! TextViewHolderCell
//        }

    }

