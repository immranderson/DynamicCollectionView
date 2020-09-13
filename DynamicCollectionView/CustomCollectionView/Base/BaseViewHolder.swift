//
//  BaseViewHolder.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import Foundation
import UIKit

class BaseViewHolder<T: BaseViewHolderModel> : UICollectionViewCell {
    
    func bindData(data: T) {
        print(data)
    }
    
}
