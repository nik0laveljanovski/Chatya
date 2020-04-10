//
//  RegisterView.swift
//  Chatya
//
//  Created by Telekom MK on 4/10/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit
import SnapKit

class RegisterView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createSubviews()

    }
    
    override func layoutSubviews() {
        makeConstraints()
    }
    
//MARK:- Define subviews
    
    lazy var registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var accountInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
    
    
    func createSubviews() {
        
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        registerLabel.text = "Register"
        registerLabel.textAlignment = .center
        registerLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        registerLabel.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        addSubview(registerLabel)
        
        
    }
    
    
    func makeConstraints() {
        
        registerLabel.snp.makeConstraints { (make) in
            make.topMargin.equalToSuperview().inset(15)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview().inset(20)
        }

    }
    
    func textFieldLabelsLayout() {
        
        usernameLabel.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        
        
    }
    
    
    
}


