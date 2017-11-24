//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prototypeLabel: UILabel!
    @IBOutlet weak var factoryMethodLabel: UILabel!
    @IBOutlet weak var builderLabel: UILabel!
    @IBOutlet weak var absFactoryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        doAbsFactory()
        doBuilder()
        doFactoryMethod()
        doPrototype()
        doUserEntity()
    }
    
    func doUserEntity() {
        UserEntity.requestUser(userId: "23", accessToken: "232"){
            result,user in
            print(result)
            print(user)
        }
    }
    
    func doPrototype() {
        let Prototype = ChungasRevengeDisplay(font: "GotanProject")
        let Philippe = Prototype.clone()
        Philippe.name = "Philippe"
        
        let Christoph = Prototype.clone()
        Christoph.name = "Christoph"
        
        let Eduardo = Prototype.clone()
        Eduardo.name = "Eduardo"
        
        prototypeLabel.text = Eduardo.font
    }
    
    func doBuilder() {
        let empire = DeathStarBuilder { builder in
            builder.x = 0.1
            builder.y = 0.2
            builder.z = 0.3
        }
        let deathStar = DeathStar(builder: empire)
        builderLabel.text = deathStar?.description
    }
    func doFactoryMethod() {
        factoryMethodLabel.text = CurrencyFactory.currency(for: .greece)?.code() ?? ""
    }

    func doAbsFactory() {
        let factoryOne = NumberHelper.factory(for: .nextStep)
        let numberOne = factoryOne("1")
        let teste = numberOne.stringValue()
        absFactoryLabel.text = teste
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

