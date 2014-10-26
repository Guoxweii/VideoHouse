//
//  BroadcastController.swift
//  VideoHouse
//
//  Created by gxw on 14/10/25.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class BroadcastController: UIViewController,ALMoviePlayerControllerDelegate {
    var videoInstance: Video?
    var player: ALMoviePlayerController?

    @IBOutlet var test: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initializePlayer()
    }
    
    func initializePlayer() {
        player = ALMoviePlayerController()
        player!.delegate = self
        
        var controls = ALMoviePlayerControls(moviePlayer: player!, style: ALMoviePlayerControlsStyleEmbedded)
        player!.controls = controls
        
        view.addSubview(player!.view!)
    }
    
    func setPlayerFrame() {
        var mainFrame = UIScreen.mainScreen().bounds
        player?.setFrame(CGRectMake(0, 44, mainFrame.size.width, mainFrame.size.height - 44))
    }
    
    func play() {
        player!.contentURL = NSURL(string: videoInstance!.url!)
        player?.play()
    }
    
    func moviePlayerWillMoveFromWindow() {
        println("will move from window")
    }
    
    func movieTimedOut() {
        println("time out")
    }

    @IBAction func dissMissView(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func imageCapture(sender: AnyObject) {
        var image = player!.view.screenshot()
        
        var screenshotCtr = ScreenshotController(nibName: "ScreenshotController", bundle: nil)
        presentViewController(screenshotCtr, animated: true, completion: nil)
        screenshotCtr.screenshotImage.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        setPlayerFrame()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientationMask.All.rawValue.hashValue
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return UIInterfaceOrientation.LandscapeRight
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        setPlayerFrame()
    }
}
