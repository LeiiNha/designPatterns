//
//  Whiteboard.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 14/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation

final class Whiteboard : Shape {
    lazy var shapes = [Shape]()
    
    init(_ shapes: Shape...) {
        self.shapes = shapes
    }
    
    func draw(fillColor: String) {
        for shape in self.shapes {
            shape.draw(fillColor: fillColor)
        }
    }
    
    
}
