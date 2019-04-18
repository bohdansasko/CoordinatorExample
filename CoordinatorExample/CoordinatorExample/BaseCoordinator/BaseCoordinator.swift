//
//  BaseCoordinator.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

class BaseCoordinator: BaseCoordinatorProtocol { 
    var coordinators: [CoordinateProtocol] = []
    
    func addDependency(_ coordinator: CoordinateProtocol) {
        coordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: CoordinateProtocol) {
        for (index, element) in coordinators.enumerated() {
            if element === coordinator {
                coordinators.remove(at: index)
                break
            }
        }
    }
    
}
