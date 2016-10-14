//
//  ALBaseViewController.swift
//  手势返回首页
//
//  Created by Allen on 16/10/14.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ALBaseViewController: UIViewController {

    //自定义导航条 将系统的隐藏 然后将自定义导航条添加到根视图上 不能添加到tableView上面
    //否则导航条会跟随tableView一起滚动
    /*
     视图层次为:
     - view
     - tableView
     - navBar
     tableview和navBar 为兄弟视图 就不会跟随滚动了
     */
    lazy var navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64))
    
    //自定义导航条的数据源对象
    lazy var navItem = UINavigationItem()
    
    //自定义导航条之后title无法显示 需要重写title属性
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }

    //设置导航条
    private func setNavbar() {
        //影藏导航条 显示自己的导航条
        self.navigationController?.navigationBar.isHidden = true
        
        self.view.addSubview(navBar)
        //设置导航条的数据源为 [navItem] 数组即可将子类的navgiationitem的数据获取到
        //子类中需要调用 navitem.titleView/leftBarbuttonitem/rightBarbuttonItem 才可以显示控件
        navBar.items = [navItem]
    }

    
    override func loadView() {
        
        super.loadView()
        
        setNavbar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    @objc private func leftBarButtonClick () {
        
        
        
    }

}
