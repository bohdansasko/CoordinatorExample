//
//  AppCoordinator.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

// MARK - AppCoodinator
final class AppCoodinator: BaseCoordinator {
    var presentable: PresentableProtocol?
    
    let factory: CoordinatorFactoryProtocol
    let router: TabsRouterProtocol
    
    init(factory: CoordinatorFactoryProtocol, router: TabsRouterProtocol) {
        self.factory = factory
        self.router = router
    }
}

extension AppCoodinator: CoordinateProtocol {
    func start() {
        let rootCoordinator = factory.makeTabsCoordinator(with: router)
        addDependency(rootCoordinator)
        rootCoordinator.start()
    }
}
