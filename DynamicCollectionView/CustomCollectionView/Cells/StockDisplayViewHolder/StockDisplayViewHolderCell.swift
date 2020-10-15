//
//  StockDisplayViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/27/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class StockDisplayViewHolderCell: UICollectionViewCell, BaseViewHolder {
    
    private var actionListener: ((String) -> Void)?
    
    @IBOutlet weak var stockNameTextLabel: UILabel!
    @IBOutlet weak var stockPriceTextLabel: UILabel!
    
    
    
    @IBAction func myTradeButtonClicked(_ sender: Any) {
        actionListener?("TRADE")
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        actionListener?("DELETE")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func bindData(data: BaseViewHolderModel) {
        
        let stockDisplayModel = data as! StockDisplayViewHolderModel
        
        actionListener = { (event) in
            
            switch event {
            
            case "TRADE":
                
                stockDisplayModel.tradeButtonClicked(
                    stockDisplayModel.stockNameText,
                    stockDisplayModel.stockPriceText
                )
                
                break
                
            case "DELETE":
                stockDisplayModel.deleteButtonClicked()
               break
                
            default:
                //NO-OP
               break
            }
            

        }
        
        stockNameTextLabel.text = stockDisplayModel.stockNameText
        stockPriceTextLabel.text = stockDisplayModel.stockPriceText
        
    }
    

}
