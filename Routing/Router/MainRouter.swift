//
//  MainRouter.swift
//  Routing
//
//  Created by Амиргали Туралинов on 14.11.2022.
//

import UIKit

protocol MainRouter {
    func showDemo(from viewController: UIViewController, shouldDismissAnimated: Bool)
    func showLogin(from viewController: UIViewController, authData: AuthData)
    func showTerms(from viewController: UIViewController, langCode: String)
}

// MARK: - MainRouter
extension Router: MainRouter {
    func showDemo(from viewController: UIViewController, shouldDismissAnimated: Bool) {
        let storyboard = UIStoryboard(name: "DemoViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as! DemoViewController
        vc.configure(with: shouldDismissAnimated)
        viewController.present(vc, animated: true)
    }
    
    func showLogin(from viewController: UIViewController, authData: AuthData) {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.configure(authData: authData)
            viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showTerms(from viewController : UIViewController, langCode: String) {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        vc.congigure(with: langCode)
            viewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
