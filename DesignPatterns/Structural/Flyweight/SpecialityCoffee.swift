//
//  SpecialityCoffee.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 15/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation
final class SpecialityCoffee: CustomStringConvertible {
    var description: String {
        return origin
    }
    
    var origin: String
    
    init(origin: String) {
        self.origin = origin
    }
}
