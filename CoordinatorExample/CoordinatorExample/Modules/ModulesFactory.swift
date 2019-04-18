//
//  ModulesFactory.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class ModulesFactory {}

extension ModulesFactory: SongsModulesFactoryProtocol {
    func makeSongsView() -> SongsViewProtocol {
        let view = SongsViewController()
        SongsAssembly.assembly(with: view)
        return view
    }
}

extension ModulesFactory: HomeModulesFactoryProtocol {
    func makeHomeView() -> HomeViewProtocol {
        let view = HomeViewController()
        HomeAssembly.assemble(with: view)
        return view
    }
}
