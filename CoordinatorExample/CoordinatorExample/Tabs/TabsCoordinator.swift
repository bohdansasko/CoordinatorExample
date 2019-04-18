//
//  TabsCoordinator.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

final class TabsCoordinator: BaseCoordinator {
    private var factory: TabsCoordinatorFactoryProtocol
    private var router: TabsRouterProtocol
    
    var presentable: PresentableProtocol?
    
    init(factory: TabsCoordinatorFactoryProtocol, router: TabsRouterProtocol) {
        self.factory = factory
        self.router = router
    }
}

extension TabsCoordinator: CoordinateProtocol {
    func start() {
        let coordinators: [[TabModel : CoordinateProtocol]] = [
            TabsFactory.makeHomeTab(with: factory),
            TabsFactory.makeStationsTab(with: factory)
        ]
        
        coordinators.forEach({ addDependency($0.first!.value) })
        let tabs = coordinators.enumerated().map({ element -> TabPresentable in
            let vc = element.element.first!.value.presentable?.viewControllerToPresent
            let tab = element.element.first!.key
            return TabPresentable(viewControllerToPresent: vc, tab: tab)
        })
        
        router.setTabs(tabs)
    }
}
