//
//  ContentView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var ordetrListVM = OrderListViewModel()
    
    var body: some View {
        
        NavigationView {
            OrderListView(orders: self.ordetrListVM.orders)
            .navigationBarTitle("aa")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
