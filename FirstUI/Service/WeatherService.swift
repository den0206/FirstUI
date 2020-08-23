//
//  WeatherService.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/23.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation


class WeatherService {
    
    func getWeather(city : String, completion :  @escaping(Weather?) -> Void)  {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=144ec1efd75e77f2571c1521035dbe49") else {return}
        
        print(url)
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if  error != nil {
                print(error!.localizedDescription)
                return
            }
            
            guard let data = data else {return}
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
            }
            
            
        }.resume()
    }
}
