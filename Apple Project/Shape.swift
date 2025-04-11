//
//  Shape.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import Foundation

class Shape {
    private var xPos : CGPoint
    private var yPos : CGPoint
    
    private var speed: Int
    private var type : String
    private var health: Int
    private var modifiers : [String]
    
    init(xPos: CGPoint, yPos: CGPoint, speed: Int, type: String, health: Int, modifiers: [String]) {
        self.xPos = xPos
        self.yPos = yPos
        self.speed = speed
        self.type = type
        self.health = health
        self.modifiers = modifiers
    }
    
    func takeDamage(damageTaken : Int){
        health -= damageTaken
    }
}
