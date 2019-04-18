//
//  TabsRouter.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

final class TabsRouter: Router {
    fileprivate weak var tabsController: UITabBarController? {
        return viewControllerToPresent as? UITabBarController
    }
    
    init(with tabBarVC: UITabBarController) {
        super.init(with: tabBarVC)
    }
}

extension TabsRouter: TabsRouterProtocol {
    func setTabs(_ modules: [TabPresentableProtocol]) {
        let viewControllers = modules.map({ return $0.viewControllerToPresent! })
        tabsController?.setViewControllers(viewControllers, animated: false)
        
        guard let tabs = tabsController?.tabBar.items else { return }
        for (tbIdx, tabBarItem) in tabs.enumerated() {
            tabBarItem.title = modules[tbIdx].tab.title
            tabBarItem.image = modules[tbIdx].tab.image
            tabBarItem.selectedImage = modules[tbIdx].tab.selectedImage
        }
    }
}
