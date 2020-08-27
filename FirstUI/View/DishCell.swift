//
//  DishCell.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/27.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct DishCell : View {
    
    let dish : Dish

    var body : some View{
        
        
        HStack {
            Image(dish.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading,spacing: 16) {
                Text(dish.name)
                Text(String(dish.prica))
                    .foregroundColor(Color.gray)
                
            }
        }.padding(5)
     
    }
}


#if DEBUG

struct DishCell_Preview : PreviewProvider{
    static var previews: some View {
        
        Group {
            
//            DishCell().colorScheme(.dark)
//
//            DishCell().previewDevice("IPhone SE")
//
//            DishCell().previewLayout(.sizeThatFits)
//                .environment(\.sizeCategory, .large)
//
            DishCell(dish: Dish.all()[0]).previewLayout(.sizeThatFits)
                           .environment(\.sizeCategory, .extraLarge)
        }
        
    }
}

#endif
