//
//  main.swift
//  ClassesDemo
//
//  Created by Mpilo Pillz on 2023/10/14.
//

import Foundation

let skeleton = Enemy()

let goul = Enemy(health: 100, attackStrength: 11)
let zombie = goul

goul.takeDamage(damage: 5)
print(goul.health)
print(zombie.health)

let dragon = Dragon()
dragon.attackStrength = 15

print(skeleton.health)
dragon.attack()

var mobster = Villain(health: 100, attackStrength: 2)
var triad = mobster

mobster.takeDamage(damage: 10)

print(
    triad.health
)
print(mobster.health)
