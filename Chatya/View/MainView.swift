//
//  MainView.swift
//  Chatya1
//
//  Created by Telekom MK on 4/9/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createSubViews()
    }
    
    override func layoutSubviews() {
        makeConstraints()
    }
    
//MARK:- Define subviews
    
    lazy var backgroundImage: UIImageView = {
        let bgImage = UIImageView()
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        return bgImage
    }()
    
    lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
//MARK:- Create subViews
    
    func createSubViews() {
        
        backgroundImage.image = UIImage(named: "main-bg-image")
        backgroundImage.alpha = 0.1
        backgroundImage.contentMode = .scaleAspectFill
        addSubview(backgroundImage)
        
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
        addSubview(logoImage)
        
        welcomeLabel.text = "Welcome to Chatya"
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        addSubview(welcomeLabel)
        
        descriptionLabel.font = UIFont(name: "HelveticaNeue", size: 14)
        descriptionLabel.text = "Join over 200 million people who use Chatya to chat with friends for free."
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        descriptionLabel.numberOfLines = 2
        addSubview(descriptionLabel)
        
        buttonStackView.axis = .vertical
        buttonStackView.distribution = .fillProportionally
        buttonStackView.spacing = 10
        addSubview(buttonStackView)
        
        registerButton.backgroundColor = #colorLiteral(red: 0.4470588235, green: 0.537254902, blue: 0.8549019608, alpha: 1)
        registerButton.layer.cornerRadius = 4.0
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5), for: .highlighted)
        registerButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 13)
        //registerButton.contentMode = .scaleToFill
        
        loginButton.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        loginButton.layer.cornerRadius = 4.0
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5), for: .highlighted)
        loginButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 13)
//      loginButton.contentMode = .scaleToFill
        
        buttonStackView.addArrangedSubview(registerButton)
        buttonStackView.addArrangedSubview(loginButton)
    }
    
//MARK:- Create constraints
    
    func makeConstraints() {
        
        backgroundImage.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
                
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(200)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        welcomeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(logoImage.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(20)
            make.height.equalTo(30)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(35)
        }
        
        buttonStackView.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(25)
            make.trailing.leading.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(20)
            make.height.equalTo(90)
        }
    }
}

public extension UIButton {
        
    
}
