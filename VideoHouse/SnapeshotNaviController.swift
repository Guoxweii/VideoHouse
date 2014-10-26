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
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
