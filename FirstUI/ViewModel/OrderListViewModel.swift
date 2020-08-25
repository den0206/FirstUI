//
//  OrderListViewModel.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/25.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

class OrderListViewModel : ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        CoffeeService().getAllOrders { (orders) in
            
            guard let orders = orders else {return}
            self.orders = orders.map(OrderViewModel.init)
        }
    }
    
}

class OrderViewModel  {
    
    let id = UUID()
    var order : Order
    
    init(order : Order) {
        self.order = order
    }
    
    var name : String {
        return order.name
    }
    
    var size : String {
        return order.size
    }
    
    var coffeeName : String {
        return order.coffeName
    }
    
    var total : Double {
        return order.total
    }
}
