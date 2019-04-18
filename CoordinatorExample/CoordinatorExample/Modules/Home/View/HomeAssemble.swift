//
//  HomeAssemble.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class HomeAssembly {
    static func assemble(with homeView: HomeViewProtocol) {
        homeView.viewModel = HomeViewModel()
    }
}
