//
//  HomeViewController.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/17/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController, HomeViewProtocol {
    var viewModel: HomeViewModelProtocol!
    var onCompletion: CloseClosure?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = viewModel.backgroundColor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
