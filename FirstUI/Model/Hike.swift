//
//  Hike.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

struct Hike {
    
    let name : String
    let imageUrl : String
    let miles : Double
}

extension Hike {
    static func all() -> [Hike] {
        
        return [
            Hike(name: "1", imageUrl: "sal", miles: 6),
            Hike(name: "2", imageUrl: "tom", miles: 5.8),
            Hike(name: "3", imageUrl: "tam", miles: 5)
        ]
    }
    
}
