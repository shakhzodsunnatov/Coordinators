//
//  CreateAccountCoordinator.swift
//  Coordinators
//
//  Created by Shokhzod on 27/07/22.
//

import Foundation
import UIKit

class CreateAccountCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func didFinishCreatingAccount() {
        parentCoordinator?.childDidFinish(self)
    }
}

