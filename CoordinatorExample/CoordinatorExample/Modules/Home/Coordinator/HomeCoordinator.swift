//
//  HomeCoordinator.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class HomeCoordinator: HomeCoordinatorOutputProtocol {
    var onClose: CloseClosure?
    
    let factory: HomeModulesFactoryProtocol
    let router: NavigationRouterProtocol
    
    var presentable: PresentableProtocol?
  
    init(factory: HomeModulesFactoryProtocol, router: NavigationRouterProtocol) {
        self.factory = factory
        self.router = router
        
        let view = factory.makeHomeView()
        presentable = view
        HomeAssembly.assemble(with: view)
    }
}

extension HomeCoordinator: CoordinateProtocol {
    func start() {
        router.setRoot(presentable, animated: true)
    }
}


