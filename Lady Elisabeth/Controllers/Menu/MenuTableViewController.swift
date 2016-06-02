//
//  MenuTableViewController.swift
//  Lady Elisabeth
//
//  Created by philip mackie on 02/06/2016.
//  Copyright © 2016 vilet studios. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    enum MenuRow: Int {
        case home
        case transport
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var viewController: UIViewController?
        
        guard let menuRow = MenuRow(rawValue: indexPath.row)
            else { return }
        
        switch menuRow {
            case .home:
                viewController = UIStoryboard(name: "Dashboard", bundle: nil).instantiateInitialViewController()
            case .transport:
                viewController = UIStoryboard(name: "Login", bundle: nil).instantiateInitialViewController()
        }
        
        guard let controller = viewController
            else { return }
        
        slideMenuController()?.changeMainViewController(controller, close: true)
    }
}
