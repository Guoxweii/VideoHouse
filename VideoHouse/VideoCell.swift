//
//  VideoCell.swift
//  VideoHouse
//
//  Created by gxw on 14/10/25.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    var delegate: UIViewController?
    var videoInstance: Video?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func playVideo(sender: UIButton) {
        var broadcastCtr = BroadcastController(nibName: "BroadcastController", bundle: nil)
        broadcastCtr.videoInstance = videoInstance?
        delegate?.presentViewController(broadcastCtr, animated: true, completion: nil)
        broadcastCtr.play()
//        var testCtr = TestViewController(nibName: "TestViewController", bundle: nil)
//        delegate?.navigationController?.pushViewController(testCtr, animated: true)
    }
    
    func setProperties() {
        nameLabel.text = videoInstance?.name
    }
    
}
