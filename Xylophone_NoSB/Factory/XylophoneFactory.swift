//
//  XylophoneFactory.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import Foundation

protocol XylophoneFactory {
    func makeXylophoneViewController(xylophoneCoordinator: XylophoneCoordinator) -> XylophoneViewController
}

class XylophoneFactoryImp: XylophoneFactory {
    func makeXylophoneViewController(xylophoneCoordinator: XylophoneCoordinator) -> XylophoneViewController {
        let xylophoneViewController = XylophoneViewController(factory: self, xylophoneCoordinator: xylophoneCoordinator)
        return xylophoneViewController
    }
}
