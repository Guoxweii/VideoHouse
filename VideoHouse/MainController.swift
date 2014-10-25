//
//  MainController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/25.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class MainController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var videoNaviCtr = VideoNaviController(nibName: "VideoNaviController", bundle: nil)
        videoNaviCtr.tabBarItem.title = "视频列表"
        videoNaviCtr.tabBarItem.image = UIImage(named: "Film.png")
        
        self.viewControllers = [ videoNaviCtr ];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientationMask.Portrait.rawValue.hashValue
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return UIInterfaceOrientation.Portrait
    }
}
