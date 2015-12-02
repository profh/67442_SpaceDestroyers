//
//  Utilities.swift
//  SpaceDestroyers
//
//  Created by Larry Heimann on 12/1/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import Foundation

extension Array {
  func randomElement() -> T {
    let index = Int(arc4random_uniform(UInt32(self.count)))
    return self[index]
  }
}