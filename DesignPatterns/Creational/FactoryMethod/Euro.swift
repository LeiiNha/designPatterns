//
//  Euro.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

struct Euro: Currency {
    func symbol() -> String {
        return "¢"
    }
    
    func code() -> String {
        return "EUR"
    }
    
}
