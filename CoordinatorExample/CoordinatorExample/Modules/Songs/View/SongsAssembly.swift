//
//  SongsAssembly.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import Foundation

final class SongsAssembly {
    static func assembly(with view: SongsViewProtocol) {
        view.viewModel = SongsViewModel()
    }
}
