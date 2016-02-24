//
//  MHPhysicsBody.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-02-24.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class MHPhysicsBody: SKPhysicsBody {
    var maxSpeed: CGFloat!
    var minSpeed: CGFloat!
    
    override var velocity: CGVector {
        get {
            return self.velocity
        }
        set {
            if (newValue.length() <= maxSpeed || newValue.length() >= minSpeed) {
                self.velocity = newValue
            }
        }
    }
    
    
}