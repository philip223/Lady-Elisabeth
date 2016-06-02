//
//  NavigationViewController.swift
//  Lady Elisabeth
//
//  Created by philip mackie on 02/06/2016.
//  Copyright © 2016 vilet studios. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        topViewController?.addLeftBarButtonWithImage(UIImage(named: "hamburgerMenu")!)
        topViewController?.addRightBarButtonWithImage(UIImage(named: "notificationsMenu")!)
    }
}
