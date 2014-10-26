//
//  SnapeshotNaviController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class SnapeshotNaviController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        var snapeshotCtr = SnapeshotsListController(nibName: "SnapeshotsListController", bundle: nil)
        pushViewController(snapeshotCtr, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
