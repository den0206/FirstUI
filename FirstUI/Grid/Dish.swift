//
//  Dish.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation
import  SwiftUI

struct Dish :Identifiable{
    
    let id = UUID()
    let name : String
    let prica : Double
    let imageUrl : String
    
}

extension Dish {
    static func all() -> [Dish] {
        
        return [
            Dish(name: "aa", prica: 35, imageUrl: "1"),
            Dish(name: "bb", prica: 35, imageUrl: "2"),
            Dish(name: "cc", prica: 35, imageUrl: "3"),
            Dish(name: "dd", prica: 35, imageUrl: "4"),
            Dish(name: "ee", prica: 35, imageUrl: "5"),
            Dish(name: "ff", prica: 35, imageUrl: "6"),

        ]
    }
}
