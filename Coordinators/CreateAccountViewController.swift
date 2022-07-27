//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by Shokhzod on 11/07/22.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {

    weak var coordinator: CreateAccountCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.didFinishCreatingAccount()
    }

}
