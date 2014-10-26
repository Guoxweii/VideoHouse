//
//  UIView+Screenshot.swift
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

extension UIView {
    func screenshot() -> UIImage {
        var imageFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.height)
        
        UIGraphicsBeginImageContextWithOptions(imageFrame.size, false, 0)
        self.drawViewHierarchyInRect(imageFrame, afterScreenUpdates: true)
        
        var screenshot = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return screenshot
    }
}
