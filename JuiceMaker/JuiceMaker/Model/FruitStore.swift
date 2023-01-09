//
//  JuiceMaker - FruitStore.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
final class FruitStore {
    static let defaultStock: UInt = 10
    private(set) var stockByFruit = [Fruit: UInt]()

    enum Fruit: Int, CaseIterable {
        case strawberry, banana, pineapple, kiwi, mango
    }

    init(stock: UInt = defaultStock) {
        for fruit in Fruit.allCases {
            stockByFruit[fruit] = stock
        }
    }

    func subtractStock(fruit: Fruit, count: UInt) throws {
        let fruitStock = try isExist(fruit: fruit)
        guard fruitStock >= count else {
            throw JuiceMakerError.outOfStock
        }
        stockByFruit[fruit] = fruitStock - count
    }

    func addStock(fruit: Fruit, count: UInt) throws {
        let fruitStock = try isExist(fruit: fruit)
        self.stockByFruit[fruit] = fruitStock + count
    }

    func isExist(fruit: Fruit) throws -> UInt {
        guard let fruitStock = stockByFruit[fruit] else {
            throw JuiceMakerError.notExistFruit
        }
        return fruitStock
    }
}
