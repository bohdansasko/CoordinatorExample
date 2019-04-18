//
//  CoordinatorFactoryProtocol.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

// MARK - CoordinatorFactoryProtocol
protocol TabsCoordinatorFactoryProtocol {
    func makeHomeCoordinator(with router: NavigationRouterProtocol) -> CoordinateProtocol & HomeCoordinatorOutputProtocol
    func makeSongsCoordinator(with router: NavigationRouterProtocol) -> CoordinateProtocol & SongsCoordinatorOutputProtocol
}

// MARK - CoordinatorFactoryProtocol
protocol CoordinatorFactoryProtocol {
    func makeTabsCoordinator(with router: TabsRouterProtocol) -> CoordinateProtocol
}
