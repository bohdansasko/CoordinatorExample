//
//  UIViewController+extension.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 4/16/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

extension UIViewController: PresentableProtocol {
    var viewControllerToPresent: UIViewController? {
        return self
    }
    
    func showAlert(title: String, message: String? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        show(alert, sender: self)
    }
}
