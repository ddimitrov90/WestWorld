//
//  DigGold.swift
//  WestWorld
//
//  Created by Dimitar Dimitrov on 1/22/17.
//  Copyright © 2017 Dimitar Dimitrov. All rights reserved.
//

import Foundation

class DigGold: State<Miner> {
    static let instance = DigGold()
    override private init() {}
    
    override func enter(entity: Miner) {
        if entity.location != Location.goldMine {
            // print enter message
            entity.changeLocation(newLocation: Location.goldMine)
        }
    }
    
    override func exit(entity: Miner) {
        // print exit message
    }
    
    override func execute(entity: Miner) {
        entity.addGold(goldAmount: 1)
        entity.increaseFatigue()
        // print get gold message
        
        if entity.isPocketFull() {
            entity.changeState(newState: DepositGold.instance)
        }
        
        if entity.isThirsty() {
            entity.changeState(newState: QuenchThirst.instance)
        }
    }
    
}
