//
//  BaseCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/13/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

protocol BaseViewHolder: UICollectionViewCell {
    
    func bindData(data: BaseViewHolderModel)
    
}
