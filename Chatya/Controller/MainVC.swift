//
//  ViewController.swift
//  Chatya1
//
//  Created by Telekom MK on 4/9/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        mainView.registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
    }
    override func loadView() {
        view = mainView
    }
    
    @objc func registerButtonTapped(sender: UIButton) {
        let vc = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func backTapped(backButton: UIBarButtonItem) {
        
        
    }
}
