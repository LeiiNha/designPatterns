//
//  Eternal.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 15/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

enum Eternal {
    static func set(_ object: Any, forKey defaultName: String) {
        let defaults: UserDefaults = UserDefaults.standard
        defaults.set(object, forKey: defaultName)
        defaults.synchronize()
    }
    
    static func object(forKey key: String) -> AnyObject! {
        let defaults: UserDefaults = UserDefaults.standard
        return defaults.object(forKey: key) as AnyObject!
    }
}
