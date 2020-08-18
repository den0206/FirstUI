//
//  OrderRowView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//


import SwiftUI

struct OrderRowView: View {
    
    var order : OrderEntity
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        HStack {
            Image("tea_image")
            .resizable()
            .frame(width: 70, height: 70)
            
            VStack(alignment: .leading) {
                Text(order.flavorName)
                    .font(.title)
                Spacer()
                if order.nataDeCoco {
                    Text("Nata")
                }
            }
            HStack {
                if order.iceCream != 0 {
                    Text(order.iceCreamName)
                }
                Spacer()
                Text(self.dateFormatter.string(from: order.date))
                    .font(.caption)
            }
            
            if order.favorite {
                Image(systemName: "heart.circle.fill")
                    .foregroundColor(.pink)
            } else {
                Image(systemName: "heart.circle.fill")
                    .foregroundColor(.secondary)
            }
            
           
            
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: orderStore.orders[0])
        .previewDevice("iPhone SE")
            .previewLayout(.fixed(width: 400, height: 80))
    }
}
