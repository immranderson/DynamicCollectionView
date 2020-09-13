//
//  CustomCollectionView.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

@IBDesignable
class CustomCollectionView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let nibName = "CustomCollectionView"
    var contentView:UIView?
    
    
    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    var items: [Int] = Array(0...50)
    var holderData: [BaseViewHolderModel] = (0...50).map { (number) -> BaseViewHolderModel in
        TextViewHolderModel(text: "TextHolder: \(number)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
        
        innerCollectionView.delegate = self
        innerCollectionView.dataSource = self

        let textHolderCell = UINib(nibName: "TextViewHolderCell", bundle: nil)
        innerCollectionView.register(textHolderCell, forCellWithReuseIdentifier: "TextViewHolderCell")
        
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 80)
    }
    
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return holderData.count
        }
    
    
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        
            
            let textViewHolderCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TextViewHolderCell", for: indexPath) as! TextViewHolderCell
        
            
            
            textViewHolderCell.bindData(data: holderData[indexPath.item] as! TextViewHolderModel)

            return textViewHolderCell
        }
        
        
        func pushHolderData(holderModels: [BaseViewHolderModel]) {
            self.holderData = holderModels
            self.innerCollectionView.reloadData()
        }
    
}
