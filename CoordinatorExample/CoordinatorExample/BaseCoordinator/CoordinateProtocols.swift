//
//  CoordinateProtocols.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/18/19.
//  Copyright © 2019 vinso. All rights reserved.
//

import Foundation

protocol CoordinateProtocol: class {
    var presentable: PresentableProtocol? { get set }
    func start()
}

protocol BaseCoordinatorProtocol {
    var coordinators: [CoordinateProtocol] { get set }
    
    func addDependency(_ coordinator: CoordinateProtocol)
    func removeDependency(_ coordinator: CoordinateProtocol)
}
