//
//  SnapeshotsListController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class SnapeshotsListController: UITableViewController {
    var snapeList: Array<Snapshot>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "图片列表"
        
        snapeList = Snapshot.allRecords() as? Array<Snapshot>
        
        let snapeshotCell = "SnapeshotCell"
        tableView.registerNib(UINib(nibName: snapeshotCell, bundle: nil), forCellReuseIdentifier:snapeshotCell)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (snapeList? != nil) ? snapeList!.count : 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let snapeshotCell = "SnapeshotCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(snapeshotCell, forIndexPath: indexPath) as SnapeshotCell
        
        var snapeshot = snapeList![indexPath.row]
        println("\(snapeshot)")
        cell.snapeshotImage.image = UIImage(contentsOfFile: snapeshot.path)
        cell.createAtLabel.text = "\(snapeshot.createdAt)"
        
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        snapeList = Snapshot.allRecords() as? Array<Snapshot>
    }

}
