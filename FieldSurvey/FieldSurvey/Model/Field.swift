//
//  Survey.swift
//  FieldSurvey
//
//  Created by Shiyifan on 21/07/2017.
//  Copyright © 2017 Shiyifan. All rights reserved.
//

import UIKit

enum Field: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
