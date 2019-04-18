//
//  CoordinatorFactory.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class CoordinatorFactory {
    fileprivate let modulesFactory = ModulesFactory()
}

extension CoordinatorFactory: CoordinatorFactoryProtocol {
    func makeTabsCoordinator(with router: TabsRouterProtocol) -> CoordinateProtocol {
        return TabsCoordinator(factory: self, router: router)
    }
}

extension CoordinatorFactory: TabsCoordinatorFactoryProtocol {
    func makeHomeCoordinator(with router: NavigationRouterProtocol) -> CoordinateProtocol & HomeCoordinatorOutputProtocol {
        return HomeCoordinator(factory: modulesFactory, router: router)
    }
    
    func makeSongsCoordinator(with router: NavigationRouterProtocol) -> CoordinateProtocol & SongsCoordinatorOutputProtocol {
        return SongsCoordinator(factory: modulesFactory, router: router)
    }
}
