//
//  PlayerBullet.swift
//  SpaceDestroyers
//
//  Created by Larry Heimann on 11/30/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import UIKit
import SpriteKit

class PlayerBullet: Bullet {

  override init(imageName: String, bulletSound:String?){
    super.init(imageName: imageName, bulletSound: bulletSound)
    self.physicsBody = SKPhysicsBody(texture: self.texture, size: self.size)
    self.physicsBody?.dynamic = true
    self.physicsBody?.usesPreciseCollisionDetection = true
    self.physicsBody?.categoryBitMask = CollisionCategories.PlayerBullet
    self.physicsBody?.contactTestBitMask = CollisionCategories.Invader
    self.physicsBody?.collisionBitMask = 0x0
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
}
