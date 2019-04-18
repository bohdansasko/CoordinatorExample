//
//  SongsViewController.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

final class SongsViewController: UIViewController, SongsViewProtocol {
    var onComletion: CloseClosure?
    var viewModel: SongsViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = viewModel.backgroundColor
    }
}
