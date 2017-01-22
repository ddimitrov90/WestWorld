//
//  RestAtHome.swift
//  WestWorld
//
//  Created by Dimitar Dimitrov on 1/22/17.
//  Copyright © 2017 Dimitar Dimitrov. All rights reserved.
//

import Foundation

class RestAtHome: State<Miner> {
    static let instance = RestAtHome()
    override private init() {}
    
    override func enter(entity: Miner) {
        if entity.location != Location.home {
            // print enter message
            entity.changeLocation(newLocation: Location.home)
        }
    }
    
    override func exit(entity: Miner) {
        // print exit message
    }
    
    override func execute(entity: Miner) {
        if entity.isRested() {
            entity.changeState(newState: DigGold.instance)
        }
    }
}
