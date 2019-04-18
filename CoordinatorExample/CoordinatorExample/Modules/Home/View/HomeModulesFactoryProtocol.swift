//
//  HomeModulesFactoryProtocol.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

protocol HomeModulesFactoryProtocol: class {
    func makeHomeView() -> HomeViewProtocol
}
