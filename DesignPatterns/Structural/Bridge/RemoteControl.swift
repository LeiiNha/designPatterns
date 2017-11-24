//
//  RemoteControl.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 14/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

class RemoteControl: Switch {
    var appliance: Appliance
    
    func turnOn() {
        self.appliance.run()
    }
    
    init(appliance: Appliance) {
        self.appliance = appliance
    }
}
