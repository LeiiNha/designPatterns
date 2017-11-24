//
//  CoffeeShop.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 15/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

final class CoffeeShop {
    private var orders: [Int: SpecialityCoffee] = [:]
    private var menu = Menu()
    
    func takeOrder(origin: String, table: Int) {
        orders[table] = menu.lookup(origin: origin)
    }
    
    func serve() {
        for(table, origin) in orders {
            print("Serving \(origin) at table \(table)")
        }
    }
}
