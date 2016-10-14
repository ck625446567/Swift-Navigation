//
//  MainTabBarController.swift
//  手势返回首页
//
//  Created by Allen on 16/10/14.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        addChildControllers()
        //tabBar.tintColor = UIColor.orange
    }
    
    private func addChildControllers() {
        
        addChildController(vc: ALHomeViewController(), title: "首页", imageName: "tabbar_home")
        
    }
    
    private func addChildController(vc: UIViewController,title: String,imageName: String) {
        
        //设置title
        vc.title = title
        
        //设置图片
        vc.tabBarItem.image = UIImage(named: imageName)
        
        vc.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        
        //设置文字的颜色
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.orange], for: .selected)
        
        //设置文字大小
        vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 11)], for: .normal)
        
        let nav = ALBaseNavController(rootViewController: vc)
        self.addChildViewController(nav)
    }

}
