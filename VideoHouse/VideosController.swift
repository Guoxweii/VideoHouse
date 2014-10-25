//
//  VideosController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/25.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit
class VideosController: UITableViewController {

    var videoData: Array<Dictionary<String,String>>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "视频列表"
        self.edgesForExtendedLayout = UIRectEdge.None;
        
        videoData = [
            ["name": "蝙蝠侠之黑暗骑士", "url": "http://211.144.114.51:5000/zg_av/uploads/video/media/3/7795adf81a.mp4"],
            ["name": "魔戒之双塔骑兵", "url": "http://211.144.114.51:5000/zg_av/uploads/video/media/3/7795adf81a.mp4"]
        ]
        
        let videoCell = "VideoCell"
        self.tableView.registerNib(UINib(nibName: videoCell, bundle: nil), forCellReuseIdentifier: videoCell)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoData!.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let videoCell = "VideoCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(videoCell, forIndexPath: indexPath) as VideoCell
        cell.delegate = self;
        
        var video = Video()
        video.name = videoData![indexPath.row]["name"]
        video.url = videoData![indexPath.row]["url"]
        cell.videoInstance = video
        cell.setProperties()

        return cell
    }
}