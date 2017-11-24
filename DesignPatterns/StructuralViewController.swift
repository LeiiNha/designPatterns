//
//  StructuralViewController.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 14/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import UIKit

class StructuralViewController: UIViewController {

    @IBOutlet weak var adapterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        doAdapter()
        doBridge()
        doComposite()
        doDecorator()
        doFacade()
        doFlyweight()
    }
    
    func doFlyweight() {
        let coffeeShop = CoffeeShop()
        coffeeShop.takeOrder(origin: "asdsadas", table: 1)
        coffeeShop.takeOrder(origin: "23232", table: 3)
        
        coffeeShop.serve()
    }
    
    func doFacade() {
        Eternal.set("Disconnect me", forKey: "Bishop")
        print(Eternal.object(forKey: "Bishop"))
    }
    
    func doDecorator() {
        var someCoffee: Coffee = SimpleCoffee()
        print("Cost: \(someCoffee.getCost())    Igredients: \(someCoffee.getIgredients())")
        someCoffee = Milk(decoratedCoffee: someCoffee)
        print("Cost: \(someCoffee.getCost())    Igredients: \(someCoffee.getIgredients())")
        someCoffee = Whip(decoratedCoffee: someCoffee)
        print("Cost: \(someCoffee.getCost())    Igredients: \(someCoffee.getIgredients())")
        
    }
    
    func doComposite() {
        let whiteboard = Whiteboard(Circle(), Square())
        whiteboard.draw(fillColor: "red")
    }
    
    func doBridge() {
        let tvRemote = RemoteControl(appliance: TV())
        tvRemote.turnOn()
        
        let vacuumRemote = RemoteControl(appliance: VacuumCleaner())
        vacuumRemote.turnOn()
    }
    
    func doAdapter() {
        let target = DeathStarSuperlaserTarget(horizontal: 2.1, vertical: 3.2)
        let oldFormat = OlderDeathStarSuperlaserTarget(target)
        
        adapterLabel.text = "Horizontal: \(oldFormat.angleH) Vertical: \(oldFormat.angleV)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
