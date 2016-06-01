//
//  AppDelegate.swift
//  Lady Elisabeth
//
//  Created by philip mackie on 01/06/16.
//  Copyright © 2016 vilet studios. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let dashboardViewController = UIStoryboard(name: "Dashboard", bundle: nil).instantiateInitialViewController()!
        let menuTableViewController = UIStoryboard(name: "Menu", bundle: nil).instantiateInitialViewController()!
        let notificationsViewController = UIStoryboard(name: "Notifications", bundle: nil).instantiateInitialViewController()!
        
        let slideMenuController = SlideMenuController(mainViewController:dashboardViewController, leftMenuViewController: menuTableViewController, rightMenuViewController: notificationsViewController)
        
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

