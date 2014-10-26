//
//  VideoNaviController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/25.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class VideoNaviController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var naviCtr = VideosController(nibName: "VideosController", bundle: nil)
        pushViewController(naviCtr, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
