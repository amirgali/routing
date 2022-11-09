//
//  DemoViewController.swift
//  Routing
//
//  Created by Амиргали Туралинов on 08.11.2022.
//

import UIKit

class DemoViewController: UIViewController {
    // MArK: - Public
    func configure(with shouldDismissAnimated: Bool) {
        self.shouldDismissAnimated = shouldDismissAnimated
    }
    
    // MARK: - Action
    @IBAction func didTabDismissButton() {
        dismiss(animated: shouldDismissAnimated)
    }
    
    // MARK: - Private
    private var shouldDismissAnimated = true
}
