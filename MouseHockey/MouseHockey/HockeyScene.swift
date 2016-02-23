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
    
    var paddle1:Paddle!
    
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
        
        let puck = Puck()
        puck.position = CGPoint(x: 200, y: 200)
        self.addChild(puck)
        puck.physicsBody?.velocity = CGVectorMake(100, 100)
        
        paddle1 = Paddle()
        self.addChild(paddle1)

    }
    
    override func mouseMoved(event: NSEvent) {
        print("mouseMoved")
        let location = event.locationInNode(self)
        print(location)
        
        paddle1.position = event.locationInNode(self)
        
        
    }
    

}