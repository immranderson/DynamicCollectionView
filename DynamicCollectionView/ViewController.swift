//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dynamicCollectionView: DynamicCollectionView!
    
    var viewControllerStateModels: [BaseViewHolderModel] = [
        
        StockDisplayViewHolderModel(
            stockNameText: "RYAN",
            stockPriceText: "$12.34",
            tradeButtonClicked: { (name, price) in
                //do something here
                print("\(name) has price of \(price)")
            },
            deleteButtonClicked: {
                print("DELETE BUTTON CLICKED")
            }
        ),
        
        StockDisplayViewHolderModel(
            stockNameText: "TOM",
            stockPriceText: "$23.45",
            tradeButtonClicked: { (name, price) in
                print("\(name) has price of \(price)")
            },
            deleteButtonClicked: {
                print("DELETE BUTTON CLICKED")
            }
        ),
        
        
        StockDisplayViewHolderModel(
            stockNameText: "LSAT",
            stockPriceText: "$99.99",
            tradeButtonClicked: { (name, price) in
                print("\(name) has price of \(price)")
            },
            deleteButtonClicked: {
                print("DELETE BUTTON CLICKED")
            }
        )
    ]
    
    struct StockResponseEntity {
        let name: String
        let price: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stocks: [StockResponseEntity] = [
            StockResponseEntity(name: "RYAN", price: "$12.34"),
            StockResponseEntity(name: "TOM", price: "$23.45"),
            StockResponseEntity(name: "LSAT", price: "$34.56"),
            StockResponseEntity(name: "RYAN", price: "$45.67"),
            StockResponseEntity(name: "TOM", price: "$56.78"),
            StockResponseEntity(name: "LSAT", price: "$67.89"),
            StockResponseEntity(name: "RYAN", price: "$78.99"),
            StockResponseEntity(name: "TOM", price: "$89.99"),
            StockResponseEntity(name: "LSAT", price: "$99.99")
        ]
        
        let cellModels = stocks.map { (stockItem) -> StockDisplayViewHolderModel in
            StockDisplayViewHolderModel(
                stockNameText: stockItem.name,
                stockPriceText: stockItem.price,
                tradeButtonClicked: { (tickerName, tickerPrice) in
                    print("NAME: \(tickerName!) with PRICE: \(tickerPrice!)")
                },
                deleteButtonClicked: {
                    print("DELETE BUTTON")
                }
            )
        }
        
        
        dynamicCollectionView.pushImmutableList(holderModels: cellModels)
    }
    
}

