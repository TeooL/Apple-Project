//
//  Player.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import Foundation

class Player: ObservableObject {
    @Published var damage: Int = 10
    @Published var attackSpeed: Int = 10
    @Published var bulletCount: Int = 1
    
    func damageUpgrade() {
        damage += 2
    }
    
    func attackSpeedUpgrade() {
        attackSpeed += 2
    }
    func bulletCountUpgrade() {
        bulletCount += 1
    }
}
