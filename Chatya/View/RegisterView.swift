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
    
    lazy var usernameLabel: CustomLabelTextField = {
        let label = CustomLabelTextField()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var usernameTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var accountInfoLabel: CustomLabelTextField = {
        let label = CustomLabelTextField()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var accountInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var emailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var createAccountBtn: CustomButton = {
        let button = CustomButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var eyeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func createSubviews() {
        
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        registerLabel.text = "Register"
        registerLabel.textAlignment = .center
        registerLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        addSubview(registerLabel)
        
        usernameLabel.text = "PICK A USERNAME"
        addSubview(usernameLabel)
        
        usernameTextField.setLeftPadding(10)
        usernameTextField.tintColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        addSubview(usernameTextField)
        
        accountInfoLabel.text = "ACCOUNT INFORMATION"
        accountInfoLabel.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        addSubview(accountInfoLabel)
        
        accountInfoStackView.axis = .vertical
        accountInfoStackView.distribution = .fillEqually
        accountInfoStackView.spacing = 8
        
        emailTextField.placeholder = "Email"
        emailTextField.keyboardType = .emailAddress
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.rightView = eyeButton
        passwordTextField.rightViewMode = .always
        
        eyeButton.setImage(UIImage(named: "eye-hidden"), for: .normal)
        eyeButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        eyeButton.frame = CGRect(x: CGFloat(passwordTextField.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        passwordTextField.addSubview(eyeButton)
        
        accountInfoStackView.addArrangedSubview(emailTextField)
        accountInfoStackView.addArrangedSubview(passwordTextField)
        addSubview(accountInfoStackView)
        
        createAccountBtn.setTitle("Create account", for: .normal)
        addSubview(createAccountBtn)
        
    }
    
    func makeConstraints() {
        
        registerLabel.snp.makeConstraints { (make) in
            make.topMargin.equalToSuperview().inset(15)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
        }
        
        usernameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(registerLabel.snp.bottom).offset(40)
            make.leading.equalToSuperview().inset(15)
        }
        
        usernameTextField.snp.makeConstraints { (make) in
            make.top.equalTo(usernameLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(45)
        }
        
        accountInfoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextField.snp.bottom).offset(25)
            make.leading.equalToSuperview().inset(15)
        }
    
        accountInfoStackView.snp.makeConstraints { (make) in
            make.top.equalTo(accountInfoLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(90)
        }
        
        eyeButton.snp.makeConstraints { (make) in
            make.width.equalTo(35)
            make.height.equalTo(40)
        }
        
        createAccountBtn.snp.makeConstraints { (make) in
            make.top.equalTo(accountInfoStackView.snp.bottom).offset(25)
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(40)
        }
    }
}



