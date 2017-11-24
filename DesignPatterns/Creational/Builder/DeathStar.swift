//
//  DeathStar.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

struct DeathStar: CustomStringConvertible {
    let x: Double
    let y: Double
    let z: Double
    
    init?(builder: DeathStarBuilder) {
        if let x = builder.x, let y = builder.y, let z = builder.z {
            self.x = x
            self.y = y
            self.z = z
        } else { return nil }
    }
    var description: String {
        return "Death Star at (x:\(x), y:\(y), z:\(z))"
    }
   
}
