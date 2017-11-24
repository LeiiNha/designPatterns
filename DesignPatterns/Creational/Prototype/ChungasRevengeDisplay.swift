//
//  ChungasRevengeDisplay.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

class ChungasRevengeDisplay {
    var name: String?
    let font: String
    
    init(font: String) {
        self.font = font
    }
    
    func clone() -> ChungasRevengeDisplay {
        return ChungasRevengeDisplay(font: self.font)
    }
}
