//
//  Puck.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-23.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class Puck:SKNode {
    
    let radius:CGFloat = 15
    var minSpeed:CGFloat = 50
    var maxSpeed:CGFloat! = 2000
    
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
        puck.fillColor = NSColor.whiteColor()
        physicsBody.friction = 0.1;
        physicsBody.restitution = 1.0;
        physicsBody.linearDamping = 0.6;
        physicsBody.allowsRotation = false;

        self.physicsBody = physicsBody
        self.addChild(puck)
        
    }
    
    func checkSpeed() {
        if (physicsBody?.velocity.length() > maxSpeed) {
            print("over max speed")
            physicsBody?.velocity.normalize()
            physicsBody?.velocity *= maxSpeed
        }
        else if (physicsBody?.velocity.length() < minSpeed) {
            print("under min speed")
            physicsBody?.velocity.normalize()
            physicsBody?.velocity *= minSpeed
        }
    }

    func collidesWithPaddle(paddle: Paddle) -> Bool {
        return (hypotf((Float) (paddle.position.x - self.position.x), (Float) (paddle.position.y - self.position.y)) < (Float)(paddle.radius+self.radius))
    }

    func isOnLeft() -> Bool {
        return self.position.x < 500
    }
    
    
    
    
}