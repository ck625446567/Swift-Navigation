//
//  ALBaseNavControllerViewController.swift
//  手势返回首页
//
//  Created by Allen on 16/10/14.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ALBaseNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        //设置根视图控制器内部会执行 pushViewController方法
        let count = childViewControllers.count
        
        if count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            
            let value = CGFloat(237 / 255.0)
            
            viewController.view.backgroundColor = UIColor(red: value, green: value, blue: value, alpha: 1)
            
            if let vc = viewController as? ALBaseViewController {
                
                vc.navItem.leftBarButtonItem = UIBarButtonItem(title: "返回", imageName: "navigationbar_back_withtext", target: self, action: #selector(back))
                
            } else {
                
                viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "返回", imageName: "navigationbar_back_withtext", target: self, action: #selector(back))
            }
        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc private func back() {
        popViewController(animated: true)
    }

}
