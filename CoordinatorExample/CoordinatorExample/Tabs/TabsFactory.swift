//
//  TabsFactory.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import UIKit

final class TabsFactory {
    static func makeHomeTab(with tabsFactory: TabsCoordinatorFactoryProtocol) -> [TabModel : CoordinateProtocol] {
        let tabModel = TabModel(title: "Songs", image: UIImage(named: "icHome"), selectedImage: UIImage(named: "icHome"))
        return [tabModel: tabsFactory.makeHomeCoordinator(with: NavigationRouter(with: UINavigationController()))]
    }
    
    static func makeStationsTab(with tabsFactory: TabsCoordinatorFactoryProtocol) -> [TabModel : CoordinateProtocol] {
        let tabModel = TabModel(title: "Stations", image: UIImage(named: "icSettings"), selectedImage: UIImage(named: "icSettings"))
        return [tabModel: tabsFactory.makeSongsCoordinator(with: NavigationRouter(with: UINavigationController()))]
    }
}
