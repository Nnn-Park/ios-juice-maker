//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
class FruitStore {
    struct Fruit {
        var name: String
        var stock: Int = 10
    }
    
}

enum Errorcase: Error {
    case outOfStock, canNotFound
}
