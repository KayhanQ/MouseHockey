//
//  HockeyScene.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-05.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class HockeyScene: SKScene {
    
    var puck:Puck!
    var player1:Player!
    var player2:Player!

    override func didMoveToView(view: SKView) {
        self.backgroundColor = SKColor(red: 0, green: 0, blue: 0, alpha: 0)
        
        let trackingArea = NSTrackingArea(rect: view.frame, options: [NSTrackingAreaOptions.MouseMoved, NSTrackingAreaOptions.ActiveInKeyWindow], owner: self, userInfo: nil)
        view.addTrackingArea(trackingArea)
        
        self.physicsWorld.gravity = CGVectorMake(0, 0)
        
        setup()
    }

    func setup() {
        let rink = Rink()
        self.addChild(rink)
        
        puck = Puck()
        puck.position = CGPoint(x: 200, y: 200)
        self.addChild(puck)
        //puck.physicsBody?.velocity = CGVectorMake(100, 100)
        puck.physicsBody?.applyImpulse(CGVectorMake(1, 1))
        print(puck.physicsBody?.velocity)
        
        
        player1 = Player(gName: "Player 1", paddle: Paddle(), isAi: false)
        self.addChild(player1.paddle)
        
        player2 = Player(gName: "Player 2", paddle: Paddle(), isAi: true)
        self.addChild(player2.paddle)
        player2.paddle.setColor(NSColor.redColor())
        
    }
    
    override func mouseMoved(event: NSEvent) {
        let location = event.locationInNode(self)
        //print(location)
        
        player1.paddle.position = event.locationInNode(self)
        
        
    }
    
    
    override func update(currentTime: NSTimeInterval) {
        
        puck.checkSpeed()
        
        if (puck.collidesWithPaddle(player1.paddle)) {
            print("collides")
            puck.physicsBody?.applyImpulse(CGVectorMake((puck.physicsBody?.velocity.dx)!/100, (puck.physicsBody?.velocity.dy)!/100))
            
        }
    }
}