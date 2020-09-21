//
//  CustomCollectionView.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

@IBDesignable
class DynamicCollectionView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let nibName = "DynamicCollectionView"
    var contentView: UIView?
    
    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    var holderData: [BaseViewHolderModel] = []
    
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
        
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return holderData[indexPath.item].provideCellSize()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return holderData.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellModel = holderData[indexPath.item]
        
        let dynamicCell = cellModel.createViewHolder(theCollectionView: collectionView, indexPath: indexPath) as! BaseViewHolder
        
        dynamicCell.bindData(data: cellModel)
        
        return dynamicCell
    }
    
    func pushImmutableList(holderModels: [BaseViewHolderModel]) {
        
        holderModels.forEach { (cellModel) in
            
            let nibCellForRegistration = UINib(nibName: cellModel.provideNibName(), bundle: nil)
            innerCollectionView.register(nibCellForRegistration, forCellWithReuseIdentifier: cellModel.provideNibName())
            
        }
        
        self.holderData = holderModels
        self.innerCollectionView.reloadData()
        
    }
    
}
