//
//  DepositGold.swift
//  WestWorld
//
//  Created by Dimitar Dimitrov on 1/22/17.
//  Copyright © 2017 Dimitar Dimitrov. All rights reserved.
//

import Foundation

class DepositGold: State<Miner> {
    static let instance = DepositGold()
    override private init() {}
    
    override func enter(entity: Miner) {
        if entity.location != Location.bank {
            // print enter message
            entity.changeLocation(newLocation: Location.bank)
        }
    }
    
    override func exit(entity: Miner) {
        // print exit message
    }
    
    override func execute(entity: Miner) {
        if entity.isWealthyEnough() {
            
        } else {
            entity.changeState(newState: DigGold.instance)
        }
    }
}
