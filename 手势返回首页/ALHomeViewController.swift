//
//  ALHomeViewController.swift
//  手势返回首页
//
//  Created by Allen on 16/10/14.
//  Copyright © 2016年 Allen. All rights reserved.
//


/*
 核心思想  --------  每次创建控制器 就继承自ALBaseViewController
 通过navItem 来添加rightBarButtonItem  左边返回按钮已经在父类中添加 
 现在就可以通过手滑动来实现 页面跳转  ---ALLEN --张其锋---
 */

import UIKit

class ALHomeViewController: ALBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //子类中都需要使用 navItem来给导航条对象添加数据
        self.navItem.rightBarButtonItem = UIBarButtonItem(title: "跳页", imageName: "没有图片", target: self, action: #selector(push))
    }
 
    @objc private func push() {
        
        let temp = ALTestViewController()
        
        temp.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(temp, animated: true)
        
        
    }
    
    

}
