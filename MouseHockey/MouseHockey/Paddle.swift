//
//  Paddle.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-23.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class Paddle:SKNode {
    
    let radius:CGFloat = 30
    
    override init() {
        super.init()
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        let puck = SKShapeNode(circleOfRadius: radius)
        
        let physicsBody = SKPhysicsBody(circleOfRadius: radius)
        puck.fillColor = NSColor.blueColor()
        physicsBody.friction = 0.0
        physicsBody.restitution = 1.0
        physicsBody.linearDamping = 0.0
        physicsBody.allowsRotation = false
        physicsBody.dynamic = false
        self.physicsBody = physicsBody
        self.addChild(puck)
        
    }
    
    
}