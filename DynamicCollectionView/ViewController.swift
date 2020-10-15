//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stocks: [StockResponseEntity] = [
        StockResponseEntity(name: "RYAN", price: "$12.34"),
        StockResponseEntity(name: "TOM", price: "$23.45"),
        StockResponseEntity(name: "LSAT", price: "$34.56"),
        StockResponseEntity(name: "RYAN", price: "$45.67")
    ]
    
    @IBOutlet weak var dynamicCollectionView: DynamicCollectionView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchButtonClicked(_ sender: Any) {
        //API Call
        //In response closure:
        
        print(searchTextField.text)
        
        let searchStockResponseEntity = StockResponseEntity(
            name: searchTextField.text!,
            price: "$50.00"
        )
        
        stocks.append(searchStockResponseEntity)
        
        searchTextField.text = ""
        
        refreshList()
    }
    
    
    struct StockResponseEntity {
        let name: String
        let price: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        refreshList()
    }
    
    func refreshList() {
        
        var cellModels: [BaseViewHolderModel] = stocks.map { (stockItem) -> StockDisplayViewHolderModel in
            StockDisplayViewHolderModel(
                stockNameText: stockItem.name,
                stockPriceText: stockItem.price,
                tradeButtonClicked: { (tickerName, tickerPrice) in
                    print("NAME: \(tickerName!) with PRICE: \(tickerPrice!)")
                },
                deleteButtonClicked: {
                    print("DELETE BUTTON CLICKED")
                }
            )
        }
        
        let imageModel = ImageViewHolderModel(imageURL: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/cat-410261.jpg", labelText: "Some Cat")
        
        cellModels.append(imageModel)
        
        dynamicCollectionView.pushImmutableList(holderModels: cellModels)
        
    }
    
}

