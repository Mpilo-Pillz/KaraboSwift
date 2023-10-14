//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Mpilo Pillz on 2023/10/14.
//

import Foundation

class Enemy {
    var health = 100
    var attackStrength = 10
    
    init(health: Int = 100, attackStrength: Int = 10) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func move() {
        print("walk forwards")
    }
    
    func attack() {
        print("Land a hit does \(attackStrength) damage")
    }
    
    func takeDamage(damage: Int) {
        health -= damage
    }
}
