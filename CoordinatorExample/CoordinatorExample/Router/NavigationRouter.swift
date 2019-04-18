//
//  NavigationRouter.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

class NavigationRouter: Router {
    fileprivate weak var navigationVC: UINavigationController? {
        return viewControllerToPresent as? UINavigationController
    }
    
    init(with navigationVC: UINavigationController) {
        super.init(with: navigationVC)
    }
}

extension NavigationRouter: NavigationRouterProtocol {
    func push(_ module: PresentableProtocol?, animated: Bool) {
        guard let topVC = module?.viewControllerToPresent else { return }
        navigationVC?.pushViewController(topVC, animated: animated)
    }
    
    func pop(animated: Bool) {
        navigationVC?.popViewController(animated: animated)
    }
    
    func setRoot(_ module: PresentableProtocol?, animated: Bool) {
        guard let rootVC = module?.viewControllerToPresent else { return }
        navigationVC?.setViewControllers([rootVC], animated: animated)
    }
}
