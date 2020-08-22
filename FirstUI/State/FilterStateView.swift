//
//  FilterStateView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct FilterStateView: View {
    //MARK: - Property
    var dishes = Dish.all()
    @State private var isSpaicy = false
    
    var body: some View {
        List {
            
            Toggle(isOn: $isSpaicy) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(dishes.filter({$0.isSpicy == self.isSpaicy})) { dish in
                
                HStack {
                    Image(dish.imageUrl)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                    .lineLimit(nil)
                    
                    Spacer()
                    
                    if (dish.isSpicy) {
                        Image("spacy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    } else {
                        
                    }
                    
                    
                }
                
            }
        }
    }
}

struct FilterStateView_Previews: PreviewProvider {
    static var previews: some View {
        FilterStateView()
    }
}
