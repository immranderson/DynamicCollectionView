//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sampleModels: [BaseViewHolderModel] = [
        TextViewHolderModel(text: "Hello"),
        TextViewHolderModel(text: "World"),
        NumberViewHolderModel(number: 5)
    ]

    @IBOutlet weak var customCollectionView: CustomCollectionView!
    
    @IBAction func addNumberClicked(_ sender: Any) {
        
        let newNumberViewHolderModel = NumberViewHolderModel(number: sampleModels.count)
        
        sampleModels.append(newNumberViewHolderModel)
        updateCollectionView()
        
    }
    
    @IBAction func addTextClicked(_ sender: Any) {
        let newTextViewHolderModel = TextViewHolderModel(text: "New Text: \(sampleModels.count)")
        
        sampleModels.append(newTextViewHolderModel)
        updateCollectionView()
    }
    
    @IBAction func addImageClicked(_ sender: Any) {
        
        let imageNumber = sampleModels.count
        let randomImageUrl = "https://picsum.photos/id/\(imageNumber)/200/300"
        
        let newImageViewHolderModel = ImageViewHolderModel(imageURL: randomImageUrl, labelText: "IMAGE NUMBER: \(imageNumber)")
        
        sampleModels.append(newImageViewHolderModel)
        updateCollectionView()
    }
    
    
    @IBAction func resetClicked(_ sender: Any) {
        sampleModels = []
        updateCollectionView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateCollectionView()
    }
    
    func updateCollectionView() {
        customCollectionView.pushHolderData(holderModels: sampleModels)
    }


}

