//
//  ViewController.swift
//  Routing
//
//  Created by Амиргали Туралинов on 02.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Private
    private let router: MainRouter = Router.shared
    
    // MARK: - Action
    @IBAction func didTabDemoButton() {
        router.showDemo(from: self, shouldDismissAnimated: true)
    }
    
    @IBAction func didTabLoginButton() {
        let authData = AuthData(login: "Username", password: "qwerty")
        router.showLogin(from: self, authData: authData)
    }
    
    @IBAction func didTabTermsButton() {
        router.showTerms(from: self, langCode: "EN")
    }
}

