//
//  Bullet.swift
//  SpaceDestroyers
//
//  Created by Larry Heimann on 11/30/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import UIKit
import SpriteKit

class Bullet: SKSpriteNode {
  
  init(imageName: String, bulletSound: String?) {
    let texture = SKTexture(imageNamed: imageName)
    super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
    if(bulletSound != nil){
      runAction(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
