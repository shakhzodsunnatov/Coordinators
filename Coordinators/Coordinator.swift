//
//  Coordinator.swift
//  Coordinators
//
//  Created by Shokhzod on 11/07/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
