//
//  CoffeeDecorator.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 15/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

class CoffeeDecorator: Coffee {
    private let decoratedCoffee: Coffee
    
    required init(decoratedCoffee: Coffee) {
        self.decoratedCoffee = decoratedCoffee
    }
    
    func getCost() -> Double {
        return decoratedCoffee.getCost()
    }
    
    func getIgredients() -> String {
        return decoratedCoffee.getIgredients()
    }
}
