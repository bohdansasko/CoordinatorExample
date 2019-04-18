//
//  SongsCoordinatorOutputProtocol.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

protocol SongsCoordinatorOutputProtocol: class {
    var onClose: CloseClosure? { get set }
    var onPressHomeButton: CloseClosure? { get set }
}
