//
//  StockDisplayViewHolderModel.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/27/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

struct StockDisplayViewHolderModel : BaseViewHolderModel {
    
    typealias StockTickerName = String?
    typealias StockPrice = String?
    
    let stockNameText: String
    let stockPriceText: String
    
    
    let tradeButtonClicked: (StockTickerName, StockPrice) -> Void
    let deleteButtonClicked: () -> Void
    
    
    func provideNibName() -> String {
        "StockDisplayViewHolderCell"
    }
    
    func provideCellSize() -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 150)
    }
    
    func createViewHolder(theCollectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        theCollectionView.dequeueReusableCell(withReuseIdentifier: provideNibName(), for: indexPath)
    }
    
    
    
}
