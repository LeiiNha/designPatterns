//
//  SwiftNumber.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation


struct SwiftNumber: Decimal {
    private var swiftInt: Int
    
    func stringValue() -> String {
        return "\(swiftInt)"
    }
    
    static func make(string: String) -> Decimal {
        return SwiftNumber(swiftInt:(string as NSString).integerValue)
    }
}
