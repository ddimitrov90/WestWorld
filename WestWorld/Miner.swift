//
//  Miner.swift
//  WestWorld
//
//  Created by Dimitar Dimitrov on 1/22/17.
//  Copyright © 2017 Dimitar Dimitrov. All rights reserved.
//

import Foundation

class Miner : BaseEntity {
    
    var currentState: State<Miner> = State<Miner>()
    private var goldCarried: Int = 0
    private var moneyInBank: Int = 0
    private var thirst: Int = 0
    private var fatigue: Int = 0
    var location: Location = .home
    
    init() {
        
    }
    
    func update() {
        self.thirst += 1
        self.currentState.execute(entity: self)
    }
    
    func changeState(newState: State<Miner>){
        self.currentState.exit(entity: self)
        self.currentState = newState
        self.currentState.enter(entity: self)
    }
    
    func changeLocation(newLocation: Location){
        self.location = newLocation
    }
    
    func addGold(goldAmount: Int){
        self.goldCarried += goldAmount
    }
    
    func increaseFatigue(){
        self.fatigue += 1
    }
    
    func resetThirst() {
        self.thirst = 0
    }
    
    func isWealthyEnough() -> Bool {
        return false
    }
    
    func isRested() -> Bool {
        return true
    }
    
    func isPocketFull() -> Bool {
        return false
    }
    
    func isThirsty() -> Bool {
        return false
    }
}
