//
//  CurrencyFactory.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

enum CurrencyFactory {
    static func currency(for country: Country) -> Currency? {
        switch country {
        case .spain, .greece:
            return Euro()
        case .unitedStates:
            return UnitedStatesDollar()
        default:
            return nil
        }
    }
}
