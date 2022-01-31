//
//  XylophoneCoordinator.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import Foundation
import UIKit

class XylophoneCoordinator {
    var navigationController: UINavigationController
    private let factory =  XylophoneFactoryImp()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let xylophoneViewController = factory.makeXylophoneViewController(xylophoneCoordinator: self)
        navigationController.setViewControllers([xylophoneViewController], animated: false)
    }
}
