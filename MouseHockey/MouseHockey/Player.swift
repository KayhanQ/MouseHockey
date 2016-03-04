//
//  Player.swift
//  MouseHockey
//
//  Created by Kayhan Qaiser on 2016-03-04.
//  Copyright © 2016 Kayhan Qaiser. All rights reserved.
//

import Foundation
import SpriteKit

class Player:SKNode {
    
    var gName: String!
    var paddle: Paddle!
    var isAi: Bool!
    
    convenience init(gName:String, paddle:Paddle, isAi:Bool) {
        self.init()

        self.gName = gName
        self.paddle = paddle
        self.isAi = isAi
        
    }


}