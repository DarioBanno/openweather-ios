//
//  WeatherViewModel.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct WeatherViewModel {

    let temperature: String
    
    init(weather: Weather) {
        // Open Weather Map returns temperatures in Kelvin
        temperature = String(format: "%0.0fº", weather.temperature-273.15)
    }
    
}
