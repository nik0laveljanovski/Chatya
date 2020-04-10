//
//  CustomTextField.swift
//  Chatya
//
//  Created by Telekom MK on 4/10/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createTextField()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createTextField()
    }
    
    func createTextField() {
        
        self.layer.cornerRadius = 4.0
        self.tintColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        self.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8980392157, blue: 0.9098039216, alpha: 1)
        self.setLeftPadding(10)
        self.setRightPadding(10)
        self.autocapitalizationType = .none
        if let font = UIFont(name: "HelveticaNeue-Medium", size: 14) {
        self.attributedPlaceholder = NSAttributedString(string: "What should everyone call you?", attributes: [NSAttributedString.Key.font: font])
        }
    }
}

extension UITextField {
    func setLeftPadding(_ size: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPadding(_ size: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: self.frame.size.height))
        paddingView.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
