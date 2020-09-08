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

        
        let vc1 = UIViewController.init()
        vc1.view.backgroundColor = UIColor.darkGray
        self.addChildRootController(vc1, "网络", "", "")
        
        let vc2 = UIViewController.init()
        vc2.view.backgroundColor = UIColor.darkGray
        self.addChildRootController(vc2, "文件", "", "")
        
    }
    

    func addChildRootController(_ vc: UIViewController, _ title: String, _ icon: String, _ selectedIcon: String) {
        
        vc.title = title
        vc.tabBarItem.image = UIImage.init(named: icon)
        vc.tabBarItem.selectedImage = UIImage.init(named: selectedIcon)
        let nav = MYZNavigationController.init(rootViewController: vc)
        self.addChild(nav)
    }

}
