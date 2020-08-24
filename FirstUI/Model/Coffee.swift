//
//  Coffee.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/24.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

struct Coffee {
    let name : String
    let imageUrl : String
    let price : Double
}


extension Coffee {
    
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Coffee1", imageUrl: "coaptin", price: 2.5),
            Coffee(name: "Coffee2", imageUrl: "latte", price: 3.5),
            Coffee(name: "Coffee3", imageUrl: "be", price: 5.5)
        ]
        
    }
}
