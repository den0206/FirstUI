//
//  WeatherViewModel.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/23.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

class WeatherViewModel : ObservableObject {
    
    private var weatherService : WeatherService
    @Published var weather = Weather()
    
    var temprature : String {
        guard let temp = weather.temp else {return ""}
        return String(format: "%.0f", temp)
    }
    
    var humanityu : String {
        guard let humanity = weather.humanity else {return ""}
        return String(format: "%.0f", humanity)
    }
    
    var cityName : String = ""
    
    init() {
        self.weatherService = WeatherService()
    }
    
    func search() {
        guard let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
        fetchWeather(city: city)
    }
    
    private func fetchWeather(city : String) {
        
        self.weatherService.getWeather(city: city) { (weather) in
            
            guard let weather = weather else {return}
            
            DispatchQueue.main.async {
                self.weather = weather
                
            }
        }
    }
}
