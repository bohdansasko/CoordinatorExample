//
//  TabModel.swift
//  CoordinatorExample
//
//  Created by Bogdan Sasko on 3/9/19.
//  Copyright © 2019 Vinso. All rights reserved.
//

import UIKit

struct TabModel {
    let title: String
    let image: UIImage?
    let selectedImage: UIImage?
}

extension TabModel: Hashable {
    var hashValue: Int {
        return title.hashValue
    }
}

