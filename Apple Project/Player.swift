//
//  Player.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import Foundation

struct Player {
    var gold : Int = 0
    var damage: Int = 10
    var attackSpeed: Int = 10
    var bulletCount: Int = 1
    
    mutating func damageUpgrade() {
        damage += 2
        print(damage)
    }
    
    mutating func attackSpeedUpgrade() {
        attackSpeed += 2
        print(attackSpeed)
    }
    
    mutating func bulletCountUpgrade() {
        bulletCount += 1
        print(bulletCount)
    }
}
