//
//  NotificationViewController.swift
//  Lady Elisabeth
//
//  Created by philip mackie on 03/06/2016.
//  Copyright © 2016 vilet studios. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet var scroll: UIScrollView!
    @IBOutlet var scroll2: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

       scroll.contentSize.width = 600
        
        scroll2.contentSize.width = 600
        
        scroll?.showsHorizontalScrollIndicator = false
        scroll?.showsVerticalScrollIndicator = false
        
        scroll2?.showsHorizontalScrollIndicator = false
        scroll2?.showsVerticalScrollIndicator = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    

    
}
