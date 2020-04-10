//
//  CustomButton.swift
//  Chatya
//
//  Created by Telekom MK on 4/10/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createBtn()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createBtn()

    }
    
    func createBtn() {
        self.backgroundColor = #colorLiteral(red: 0.4470588235, green: 0.537254902, blue: 0.8549019608, alpha: 1)
        self.layer.cornerRadius = 4.0
        self.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5), for: .highlighted)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 13)
        
    }
}
