//
//  RegisterVC.swift
//  Chatya
//
//  Created by Telekom MK on 4/10/20.
//  Copyright © 2020 telekom. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerView = RegisterView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = registerView
    }

}
