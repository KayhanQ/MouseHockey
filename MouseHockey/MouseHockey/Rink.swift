//
//  Rink.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-05.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class Rink:SKNode {
    
    override init() {
        super.init()
        
        setup()
        
    }
    
    func setup() {
        let frame = self.calculateAccumulatedFrame()

        let width:CGFloat = 800
        let height:CGFloat = 500
        
        let border = SKShapeNode(rect: CGRect(x: 100, y: 100, width: width, height: height))
        border.strokeColor = NSColor.whiteColor()
        self.addChild(border)
        
        border.physicsBody = SKPhysicsBody(edgeLoopFromRect: border.frame)
        border.physicsBody?.friction = 0;
        
        
        
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}