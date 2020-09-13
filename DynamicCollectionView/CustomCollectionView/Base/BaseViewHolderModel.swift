//
//  BaseViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import Foundation

import Foundation
import UIKit

protocol BaseViewHolderModelProtocol {
    
    func createViewHolder<T>(theCollectionView: UICollectionView, indexPath: IndexPath) -> BaseViewHolder<T>
    
}


class BaseViewHolderModelClass {
    
    
}

typealias BaseViewHolderModel = BaseViewHolderModelClass & BaseViewHolderModelProtocol
