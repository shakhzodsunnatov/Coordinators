//
//  MainTapBarController.swift
//  Coordinators
//
//  Created by Shokhzod on 12/07/22.
//

import UIKit

class MainTapBarController: UITabBarController {
    let main = MainCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main.start()
        
        viewControllers = [main.navigationController]
    }
}
