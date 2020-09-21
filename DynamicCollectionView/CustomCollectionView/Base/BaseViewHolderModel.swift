//
//  BaseCellModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/13/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

protocol BaseViewHolderModel {
    func provideNibName() -> String
    func provideCellSize() -> CGSize
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
