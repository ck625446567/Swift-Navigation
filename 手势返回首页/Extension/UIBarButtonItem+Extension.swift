//
//  AppDelegate.swift
//  手势返回首页
//
//  Created by Allen on 16/10/14.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit


//extension 

extension UIBarButtonItem {
    
    convenience init(title: String = "",imageName: String,target: Any?,action: Selector?) {
        //以self的身份调用父类的构造函数
        let btn = UIButton()
        
        btn.setTitle(title, for: .normal)
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        
        btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        
        btn.setTitleColor(UIColor.darkGray, for: .normal)
        
        btn.setTitleColor(UIColor.orange, for: .highlighted)
        
        btn.sizeToFit()
        
        if let tar = target,
            let ac = action {
            btn.addTarget(tar, action: ac, for: .touchUpInside)
        }
        
        self.init()
        self.customView = btn
        
    }
}
