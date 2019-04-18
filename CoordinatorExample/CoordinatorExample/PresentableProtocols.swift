//
//  Protocols.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/16/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

// MARK - closures
typealias CloseClosure = () -> ()

// MARK - protocols
protocol PresentableProtocol {
    var viewControllerToPresent: UIViewController? { get }
}

protocol TabPresentableProtocol: PresentableProtocol {
    var tab: TabModel { get set }
}

class TabPresentable: TabPresentableProtocol {
    var viewControllerToPresent: UIViewController?
    var tab: TabModel
    
    init(viewControllerToPresent: UIViewController?, tab: TabModel) {
        self.viewControllerToPresent = viewControllerToPresent
        self.tab = tab
    }
}
