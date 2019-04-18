//
//  HomeViewProtocol.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

protocol HomeViewProtocol: NSObjectProtocol, PresentableProtocol {
    var viewModel: HomeViewModelProtocol! { get set }
    var onCompletion: CloseClosure? { get set }
}
