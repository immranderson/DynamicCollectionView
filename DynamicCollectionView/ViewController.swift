//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customCollectionView: CustomCollectionView!
    
    let sampleModels: [BaseViewHolderModel] = [
        TextViewHolderModel(text: "Hello"),
        TextViewHolderModel(text: "World")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        customCollectionView.pushHolderData(holderModels: sampleModels)
    }


}

