//
//  ViewController.swift
//  Coordinators
//
//  Created by Shokhzod on 11/07/22.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coordinator Test"
        // Do any additional setup after loading the view.
        self.configNavigator()
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    // MARK: UI appearance configure
        func configNavigator() {
            let nav = self.navigationController?.navigationBar

            nav?.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: UIColor.red,
                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)
            ]
            
            nav?.isTranslucent = false
            nav?.barTintColor = UIColor.blue
            nav?.topItem?.title = "Coordinator Test"
        }
}

