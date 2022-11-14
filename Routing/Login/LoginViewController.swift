//
//  LoginViewController.swift
//  Routing
//
//  Created by Амиргали Туралинов on 08.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Public (запись значений в поля)
    func configure(authData: AuthData) {
        defaultLogin = authData.login
        defaultPassword = authData.password
    }
    
    
    // MARK: - IBOutlets
    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loginField.text = defaultLogin
        passwordField.text = defaultPassword
    }
    
    // MARK: - Private
    private var defaultLogin: String = ""
    private var defaultPassword: String = ""

}
