//
//  CustomLabelTextField.swift
//  Chatya
//
//  Created by Telekom MK on 4/10/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit

class CustomLabelTextField: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createLabel()
    }
    
    func createLabel() {
        
        self.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        self.font = UIFont(name: "HelveticaNeue-Bold", size: 12)
    
    }
}
