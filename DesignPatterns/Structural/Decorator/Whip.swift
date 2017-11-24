//
//  Whip.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 15/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

final class Whip: CoffeeDecorator {
    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 1.0
    }
    
    override func getIgredients() -> String {
        return super.getIgredients() + ", Whip"
    }
    
}
