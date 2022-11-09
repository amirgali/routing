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

    // MARK: - Action
    @IBAction func didTabDemoButton() {
        let storyboard = UIStoryboard(name: "DemoViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as! DemoViewController
        vc.configure(with: false)
        present(vc, animated: true)
    }
    
    @IBAction func didTabLoginButton() {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTabTermsButton() {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}

