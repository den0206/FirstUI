//
//  OrderView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct OrderView: View {

    //MARK: - property
    
    @State private var flavor : Int = 0
    @State private var nataDecoco : Bool = false
    @State private var iceCream : Int = 0
    @State private var quantity = 1
    @State private var other = ""

    var body: some View {
        VStack {
            Image("tapioca_preview")
        
            HStack {
                Text("select Falavor")
                Picker(selection: $flavor, label: Text("select Flabvor")) {
                    ForEach(0 ..< flavorArray.count) {
                        Text(flavorArray[$0])
                    }
                }.labelsHidden()
                .frame(minWidth: 250)
                .clipped()
            }
            Toggle(isOn: $nataDecoco) {
                Text("natadecoco tapping")
            }
            
            Picker(selection: $iceCream, label: Text("Icecream topping")) {
                ForEach(0 ..< iceCreamArray.count) {
                    Text(iceCreamArray[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Stepper(value: $quantity, in: 1 ... 10) {
                Text("Quantity : \(quantity)")
            }
            
            TextField("Other request", text: $other)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Divider()
            
            Button(action: {}) {
                Text("order")
            }.padding()
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
