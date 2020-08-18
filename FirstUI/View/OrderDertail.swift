//
//  OrderDertail.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct OrderDertail: View {
    var order : OrderEntity
    var dateFomatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                if order.favorite {
                    Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                } else {
                    Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
            }.padding()
            
            Image("tapioca_preview")
            
            Text(order.flavorName)
                .font(.title)
            
            if order.nataDeCoco {
                Text("Nata")
    
            }
            if order.iceCream != 0 {
                Text(order.iceCreamName)
            }
            
            Text("\(order.date, formatter: dateFomatter)")
                .font(.caption)
            
            
        }
        
        
    }
}

struct OrderDertail_Previews: PreviewProvider {
    static var previews: some View {
        OrderDertail(order: orderStore.orders[0])
    }
}
