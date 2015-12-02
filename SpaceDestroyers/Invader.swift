//
//  Invader.swift
//  SpaceDestroyers
//
//  Created by Larry Heimann on 11/30/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import UIKit
import SpriteKit

class Invader: SKSpriteNode {
  var invaderRow = 0
  var invaderColumn = 0
  
  init() {
    var randNum = Int(arc4random_uniform(3) + 1)
    let texture = SKTexture(imageNamed: "invader\(randNum)")
    super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
    self.name = "invader"
    // preparing invaders for collisions
    self.physicsBody = SKPhysicsBody(texture: self.texture, size: self.size)
    self.physicsBody?.dynamic = true
    self.physicsBody?.usesPreciseCollisionDetection = false
    self.physicsBody?.categoryBitMask = CollisionCategories.Invader
    self.physicsBody?.contactTestBitMask = CollisionCategories.PlayerBullet | CollisionCategories.Player
    self.physicsBody?.collisionBitMask = 0x0
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  
  func fireBullet(scene: SKScene){
    let bullet = InvaderBullet(imageName: "laser",bulletSound: nil)
    bullet.position.x = self.position.x
    bullet.position.y = self.position.y - self.size.height/2
    scene.addChild(bullet)
    let moveBulletAction = SKAction.moveTo(CGPoint(x:self.position.x,y: 0 - bullet.size.height), duration: 2.0)
    let removeBulletAction = SKAction.removeFromParent()
    bullet.runAction(SKAction.sequence([moveBulletAction,removeBulletAction]))
  }
  
}
