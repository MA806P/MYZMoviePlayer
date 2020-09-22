//
//  MYZTabarController.swift
//  MYZPlayer
//
//  Created by MA806P on 2020/9/7.
//  Copyright © 2020 myz. All rights reserved.
//

import UIKit

class MYZTabarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isOpaque = false
        
        let vc1 = UIViewController.init()
        vc1.view.backgroundColor = UIColor.white
        self.addChildRootController(vc1, "网络", "tabbar_network_normal", "tabbar_network_selected")
        
        let vc2 = UIViewController.init()
        vc2.view.backgroundColor = UIColor.darkGray
        self.addChildRootController(vc2, "文件", "tabbar_file_normal", "tabbar_file_selected")
        
    }
    

    func addChildRootController(_ vc: UIViewController, _ title: String, _ icon: String, _ selectedIcon: String) {
        
        vc.title = title
        vc.tabBarItem.image = UIImage.init(named: icon)!.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage.init(named: selectedIcon)!.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([.foregroundColor : UIColor(named: "theme_normal")!], for: .normal)
        vc.tabBarItem.setTitleTextAttributes([.foregroundColor : UIColor(named: "theme_selected")!], for: .selected)
        let nav = MYZNavigationController.init(rootViewController: vc)
        self.addChild(nav)
    }

}
