//
//  StockDisplayViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/27/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class StockDisplayViewHolderCell: UICollectionViewCell, BaseViewHolder {
    
    var stockDisplayModel: StockDisplayViewHolderModel? = nil
    
    @IBOutlet weak var stockNameTextLabel: UILabel!
    @IBOutlet weak var stockPriceTextLabel: UILabel!

    @IBOutlet weak var myTradeButton: UIButton!
    
    @IBAction func myTradeButtonClicked(_ sender: Any) {
        self.stockDisplayModel?.tradeButtonClicked(
            self.stockDisplayModel?.stockNameText,
            self.stockDisplayModel?.stockPriceText
            )
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func bindData(data: BaseViewHolderModel) {
        
        self.stockDisplayModel = data as! StockDisplayViewHolderModel
        
        stockNameTextLabel.text = self.stockDisplayModel?.stockNameText
        stockPriceTextLabel.text = self.stockDisplayModel?.stockPriceText
        
    }
    

}
