//
//  ContentView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        List {
            ForEach(dishes, id: \.self) { dish in
                DishCell(dish: dish)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
