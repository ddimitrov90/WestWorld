//
//  QuenchThirst.swift
//  WestWorld
//
//  Created by Dimitar Dimitrov on 1/22/17.
//  Copyright © 2017 Dimitar Dimitrov. All rights reserved.
//

import Foundation
class QuenchThirst: State<Miner> {
    static let instance = QuenchThirst()
    override private init() {}
    
    override func enter(entity: Miner) {
        if entity.location != Location.saloon {
            // print enter message
            entity.changeLocation(newLocation: Location.saloon)
        }
    }
    
    override func exit(entity: Miner) {
        // print exit message
    }
    
    override func execute(entity: Miner) {
        entity.resetThirst()
        // print not thirsty message
        entity.changeState(newState: DigGold.instance)
    }
}
