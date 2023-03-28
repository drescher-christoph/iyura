//
//  TabBar.swift
//  iyura
//
//  Created by Christoph Drescher on 26.03.23.
//

import Foundation
import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = UIColor.white
       setUpTabBar()
    }
    
    func setUpTabBar() {
        let HomeVC = UINavigationController(rootViewController: Dashboard())
        HomeVC.tabBarItem.image = UIImage(systemName: "chart.bar")
        HomeVC.tabBarItem.selectedImage = UIImage(systemName: "chart.bar")
        
        
        let AccountVC = UINavigationController(rootViewController: Account())
        AccountVC.tabBarItem.image = UIImage(systemName: "chart.pie")
        AccountVC.tabBarItem.selectedImage = UIImage(systemName: "chart.pie")
        
        
        let tabBar = tabBarController
        
        viewControllers = [HomeVC, AccountVC]
    }
}

