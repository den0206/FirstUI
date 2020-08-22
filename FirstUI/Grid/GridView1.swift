//
//  GridView1.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI



struct GridView1: View {
    
    let disheds = Dish.all()
    
    var body: some View {
        
        let chunkedDishes = disheds.chuncked(into: 3)
        
        return List {
            
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageUrl)
                            .resizable()
//                            .frame(width: 100, height: 100)
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct GridView1_Previews: PreviewProvider {
    static var previews: some View {
        GridView1()
    }
}
