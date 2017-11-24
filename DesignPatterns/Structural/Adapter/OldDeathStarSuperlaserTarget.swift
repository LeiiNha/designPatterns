//
//  OldDeathStarSuperlaserTarget.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 14/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

struct OlderDeathStarSuperlaserTarget: OlderDeathStarSuperlaserAiming {
    private let target: DeathStarSuperlaserTarget
    
    var angleV: NSNumber {
        return NSNumber(value: target.angleVertical)
    }
    
    var angleH: NSNumber {
        return NSNumber(value: target.angleHorizontal)
    }
    
    init(_ target: DeathStarSuperlaserTarget) {
        self.target = target
    }
    
    
}
