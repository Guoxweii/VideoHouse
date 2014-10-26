//
//  Screenshot.swift
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

import UIKit

class Screenshot: NSObject {
    class var DirectoryPath: String {
        get {
            return NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
        }
    }
    
    var prefix: String?
    var name: String?
    var path: String?
    
    class func store(image: UIImage) -> Screenshot {
        var screenshot = Screenshot()
        
        screenshot.prefix = screenshot.generatePrefix()
        screenshot.name = screenshot.generateImageName()
        screenshot.path = DirectoryPath + "/" + screenshot.prefix! + "/" + screenshot.name!
        screenshot.initializeAndSaveImage(image)
        
        return screenshot
    }
    
    func generatePrefix() -> String {
        return NSUUID().UUIDString
    }
    
    func generateImageName() -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd-hh-mm"
        return  "\(dateFormatter.stringFromDate(NSDate())).png"
    }
    
    func initializeAndSaveImage(image: UIImage) {
        initliazePrefixPath()
        UIImagePNGRepresentation(image).writeToFile(path!, atomically: true)
    }
    
    func initliazePrefixPath() {
        if !isIniatializePrefixPath() {
            let fileManager = NSFileManager.defaultManager()
            fileManager.createDirectoryAtPath(prefixPath(), withIntermediateDirectories: true, attributes: nil, error: nil)
        }
    }
    
    func isIniatializePrefixPath() -> Bool {
        let fileManager = NSFileManager.defaultManager()
        var isDir = ObjCBool(true)
        return fileManager.fileExistsAtPath(prefixPath(), isDirectory: &isDir)
    }
    
    func prefixPath() -> String {
        return Screenshot.DirectoryPath + "/" + prefix!
    }
}
