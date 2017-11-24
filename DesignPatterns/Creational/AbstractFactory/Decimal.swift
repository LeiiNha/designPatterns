//
//  Decimal.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation


protocol Decimal  {
    func stringValue() -> String
    //factory
    
    static func make(string: String) -> Decimal
}



