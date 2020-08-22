//
//  Array+Extensions.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/20.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

extension Array {
    
    func chuncked(into size : Int) -> [[Element]] {
        
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
        
    }
//    func chunks(size : Int) -> [ArraySlice<Element>] {
//        var chunks : [ArraySlice<Element>] = [ArraySlice<Element>]()
//
//        for index in stride(from: 0, to: self.count - 1, by: size ) {
//            var chunk = ArraySlice<Element>()
//            let end = index + size
//
//            if end >= self.count {
//                chunk = self[index..<self.count]
//            } else {
//                chunk = self[index..<end]
//            }
//
//            chunks.append(chunk)
//
//            if (end + 1) == self.count {
//                let remainingChunk = self[end..<self.count]
//                chunks.append(remainingChunk)
//            }
//        }
//
//        return chunks
//    }
}
