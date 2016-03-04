//
//  BasicAi.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-03-04.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class BasicAi:NSObject {
    
    var paddle: Paddle!
    var home: CGPoint!
    let speedFactor: CGFloat = 500
    
    convenience init(paddle: Paddle) {
        self.init()
        
        self.paddle = paddle
        self.home = CGPoint(x: 200, y: 300)
    }
    
    func updateState(puck: Puck) {
        if (puck.isOnLeft()) {
            var vec = CGVectorMake(puck.position.x - paddle.position.x, puck.position.y - paddle.position.y)
            vec.normalize()
            
            paddle.physicsBody?.velocity = vec * speedFactor
            
        }
        else {
            var vec = CGVectorMake(home.x - paddle.position.x, home.y - paddle.position.y)
            vec.normalize()
            paddle.physicsBody?.velocity = vec * speedFactor

        }
    }
    
}