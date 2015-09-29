//
//  TabViewController.swift
//  swif2048
//
//  Created by 段瑞权 on 15/9/27.
//  Copyright © 2015年 胡孟虎. All rights reserved.
//
import UIKit
import Foundation
class TabViewController: UITabBarController {
    init(){
        super.init(nibName: nil, bundle: nil)
        var viewMain = MainController()
        viewMain.title = "2048"
        var viewSetting = SettingViewController()
        viewSetting.title = "设置"
        
        var main = UINavigationController(rootViewController: viewMain)
        var setting = UINavigationController(rootViewController: viewSetting)
        self.viewControllers = [main,setting]
    }
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
}
