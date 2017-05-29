//
//  ForecastViewModel.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct ForecastViewModel {

    let temperature: String
    let temperatureMin: String
    let temperatureMax: String
    let iconString: String
    
    init(weather: Weather) {
        temperature = ForecastViewModel.format(temperature: weather.temperature)
        temperatureMin = ForecastViewModel.format(temperature: weather.temperatureMin)
        temperatureMax = ForecastViewModel.format(temperature: weather.temperatureMax)
        
        // TODO: update icon for night time (compare with sunrise/sunset time)
        iconString = WeatherIconsFontMapper.iconString(id: "\(weather.code)", nightTime: false) ?? ""
    }

    static func format(temperature: Double) -> String {
        // Open Weather Map returns temperatures in Kelvin
        return String(format: "%0.0fº", temperature-273.15)
    }
    
}
