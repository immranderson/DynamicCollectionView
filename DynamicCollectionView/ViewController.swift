//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ryansCustomView: MyCustomView!
    
    @IBOutlet weak var dynamicCollectionView: DynamicCollectionView!
    
    var viewControllerStateModels: [BaseViewHolderModel] = [
        RyanViewHolderModel(startText: "Starting with Ryan"),
        TextViewHolderModel(text: "World"),
        NumberViewHolderModel(number: 1234),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        TextViewHolderModel(text: "Ryan"),
        NumberViewHolderModel(number: 1234)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ryansCustomView.setData(leftLabel: "LEFT", rightLabel: "RIGHT")
        dynamicCollectionView.pushImmutableList(holderModels: viewControllerStateModels)
    }

}

