//
//  RouterProtocol.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

protocol RouterProtocol: PresentableProtocol {
    func present(_ module: PresentableProtocol?, animated: Bool)
    func dismiss()
}

protocol NavigationRouterProtocol: RouterProtocol {
    func push(_ module: PresentableProtocol?, animated: Bool)
    
    func pop(animated: Bool)
    
    func setRoot(_ module: PresentableProtocol?, animated: Bool)
}

protocol TabsRouterProtocol {
    func setTabs(_ modules: [TabPresentableProtocol])
}
