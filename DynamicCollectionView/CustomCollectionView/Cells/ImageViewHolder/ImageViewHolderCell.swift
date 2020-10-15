//
//  ImageViewHolderCell.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/12/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit
import Kingfisher


class ImageViewHolderCell: UICollectionViewCell, BaseViewHolder {
    
    
    
    var actionListener: ((Any) -> Void)?
    
    func bindData(data: BaseViewHolderModel) {
        
                let imageViewHolderModel = (data as! ImageViewHolderModel)
        
                someImageLabel.text = imageViewHolderModel.labelText
        
                let imageUrl = URL(string: imageViewHolderModel.imageURL)
                let resizeProcessor = ResizingImageProcessor(referenceSize: CGSize(width: UIScreen.main.bounds.width, height: 200))
        //        let processor = CroppingImageProcessor(size: CGSize(width: UIScreen.main.bounds.width, height: 200), anchor: CGPoint(x: 0.5, y: 0.5))
        
                someImageView.kf.setImage(
                    with: imageUrl,
                    options: [
                    .processor(resizeProcessor)
                    ]
                )
        
    }
    

    @IBOutlet weak var someImageView: UIImageView!
    @IBOutlet weak var someImageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//
//    override func bindData(data: BaseViewHolderModel) {
//        let imageViewHolderModel = (data as! ImageViewHolderModel)
//
//        someImageLabel.text = imageViewHolderModel.labelText
//
//        let imageUrl = URL(string: imageViewHolderModel.imageURL)
//        let resizeProcessor = ResizingImageProcessor(referenceSize: CGSize(width: UIScreen.main.bounds.width, height: 200))
////        let processor = CroppingImageProcessor(size: CGSize(width: UIScreen.main.bounds.width, height: 200), anchor: CGPoint(x: 0.5, y: 0.5))
//
//        someImageView.kf.setImage(
//            with: imageUrl,
//            options: [
//            .processor(resizeProcessor)
//            ]
//        )
//
//    }

}
