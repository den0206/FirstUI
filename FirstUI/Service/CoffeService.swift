//
//  CoffeService.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/24.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

class CoffeeService {
    
    func createCoffeOrder(ordrer : Order, completion : @escaping(CreateOrderResponse?) -> Void) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else { return}
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(ordrer)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                completion(nil)
                return
            }
            
            guard let data = data else {return}
            
            let createResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
            
            DispatchQueue.main.async {
                 completion(createResponse)
            }
            
            
        }.resume()
        
    }
    
    func getAllOrders(completion :  @escaping([Order]?) -> Void) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else {completion(nil); return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                completion(nil)
                return
            }
            
            guard let data = data else {return}
            
           let orders =  try? JSONDecoder().decode([Order].self, from: data)
            
            DispatchQueue.main.async {
                completion(orders)
            }
            
            
        }.resume()
    }
    
}
