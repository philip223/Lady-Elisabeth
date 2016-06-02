//
//  GradientView.swift
//  Lady Elisabeth
//
//  Created by philip mackie on 01/06/16.
//  Copyright © 2016 vilet studios. All rights reserved.
//

import UIKit

@IBDesignable class GradientView: UIView {

    
    var colors: [UIColor] = [UIColor.blueColor(), UIColor.clearColor()] {
        didSet {
            updateGradient()
        }
    }
    
    
    let gradientLayer = CAGradientLayer()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, atIndex: 0)
        updateGradient()
    }
    
    func updateGradient() {
        gradientLayer.colors = colors.flatMap{ $0.CGColor }
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0.0)
    }
}