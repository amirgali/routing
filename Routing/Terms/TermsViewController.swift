//
//  TermsViewController.swift
//  Routing
//
//  Created by Амиргали Туралинов on 08.11.2022.
//

import UIKit

class TermsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet private var agreementTitleLabel: UILabel!
    
    // MARK: - Public
    func congigure(with langCode: String) {
        self.langCode = langCode
    }
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let defaulfTitle = agreementTitleLabel.text {
            let newTitle = defaulfTitle + " - " + langCode
            agreementTitleLabel.text = newTitle
        }
    }
    
    // MARK: - Private
    private var langCode: String = ""
}
