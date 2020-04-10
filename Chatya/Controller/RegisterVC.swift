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
        self.hideKeyboardWhenTappedAround()
        registerView.usernameTextField.becomeFirstResponder()
    }
    
    override func loadView() {
        view = registerView
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
