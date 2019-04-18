//
//  Router.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

class Router: NSObject {
    fileprivate weak var rootViewController: UIViewController?
    
    init(with rootVC: UIViewController) {
        rootViewController = rootVC
        super.init()
    }
    
    var viewControllerToPresent: UIViewController? {
        return rootViewController
    }
}

extension Router: RouterProtocol {
    func present(_ module: PresentableProtocol?, animated: Bool) {
        guard let modalVC = module?.viewControllerToPresent else { return }
        rootViewController?.present(modalVC, animated: animated, completion: nil)
    }
    
    func dismiss() {
        rootViewController?.dismiss(animated: true, completion: nil)
    }
}
