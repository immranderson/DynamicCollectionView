//
//  MyCustomView.swift
//  DynamicCollectionView
//
//  Created by Tom Anderson on 9/14/20.
//  Copyright © 2020 Tom Anderson. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView {
    
    let nibName = "MyCustomView"
    var contentView: UIView?
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
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
        
        
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    func setData(leftLabel: String, rightLabel: String) {
        self.leftLabel.text = leftLabel
        self.rightLabel.text = rightLabel
    }
    
}
