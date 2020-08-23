//
//  WeatherView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/23.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var weatherVM : WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        
        VStack(alignment: .center) {
            TextField("City Name", text: $weatherVM.cityName) {
                print(self.weatherVM.cityName)
                self.weatherVM.search()
            }
            .padding()
            .fixedSize()
            
            Text(weatherVM.temprature)
                .font(.subheadline)
            .offset(y: 100)
                .foregroundColor(Color.white)
            .offset(y: -100)
            .padding()
            
        }.frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
