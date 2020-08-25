//
//  OrderListView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/25.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    
    let orders : [OrderViewModel]
    
    init(orders : [OrderViewModel]) {
        self.orders = orders
    }
    var body: some View {
        List {
            ForEach(self.orders, id: \.id) { order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        . cornerRadius(16)
                    
                    VStack {
                        Text(order.name)
                            .font(.title)
                            .padding([.leading, .bottom], 10)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        HStack {
                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text(order.size)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .foregroundColor(Color.blue)
                            .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
    
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders:[OrderViewModel(order: Order(name: "aa", size: "22", coffeName: "Coffee", total: 3.0))])
    }
}
