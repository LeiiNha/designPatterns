//
//  Switch.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 14/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

protocol Switch {
    var appliance: Appliance { get set }
    func turnOn()
}
