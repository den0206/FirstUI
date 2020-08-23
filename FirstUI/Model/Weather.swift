//
//  Weather.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/23.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation

struct  WeatherResponse : Decodable {
    let main : Weather
}

struct Weather : Decodable {
    var temp : Double?
    var humanity : Double?
    
}
