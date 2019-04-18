//
//  SongsCoordinator.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class SongsCoordinator: BaseCoordinator, SongsCoordinatorOutputProtocol {
    let factory: SongsModulesFactoryProtocol
    let router: NavigationRouterProtocol
    
    var onClose: CloseClosure?
    var onPressHomeButton: CloseClosure?

    var presentable: PresentableProtocol?
    
    init(factory: SongsModulesFactoryProtocol, router: NavigationRouterProtocol) {
        self.factory = factory
        self.router = router
        self.presentable = factory.makeSongsView()
    }
}

extension SongsCoordinator: CoordinateProtocol {
    func start() {
        router.push(presentable, animated: true)
    }
}
