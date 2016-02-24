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
    
    let radius:CGFloat = 10
    
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
        physicsBody.friction = 0.0;
        physicsBody.restitution = 1.0;
        physicsBody.linearDamping = 0.4;
        physicsBody.allowsRotation = false;

        self.physicsBody = physicsBody
        self.addChild(puck)
        
    }
    
    func collidesWithPaddle(paddle: Paddle) -> Bool {
        return (hypotf((Float) (paddle.position.x - self.position.x), (Float) (paddle.position.y - self.position.y)) < (Float)(paddle.radius+self.radius))
    }


}