//
//  AppDelegate.swift
//  Xylophone_NoSB
//
//  Created by Raúl Pavón on 31/01/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var xylophoneCoordinator: XylophoneCoordinator?
    let navController = UINavigationController()
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initializeWindow()
        return true
    }
    
    func initializeWindow() {
        xylophoneCoordinator = XylophoneCoordinator(navigationController: navController)
        xylophoneCoordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}

