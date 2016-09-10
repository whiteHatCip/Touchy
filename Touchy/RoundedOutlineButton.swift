//
//  RoundedOutlineView.swift
//  Touchy
//
//  Created by Fabio Cipriani on 10/09/16.
//  Copyright © 2016 Fabio Cipriani. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedOutlineButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
}
