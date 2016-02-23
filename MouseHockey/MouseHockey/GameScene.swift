//
//  GameScene.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-05.
//  Copyright (c) 2016 Kayhan Qaiser. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Start Mouse Hockey";
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func mouseDown(theEvent: NSEvent) {
        
        let secondScene = HockeyScene(size: self.size)
        let transition = SKTransition.flipVerticalWithDuration(1.0)
        secondScene.scaleMode = SKSceneScaleMode.AspectFill
        self.scene!.view?.presentScene(secondScene, transition: transition)
        
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
