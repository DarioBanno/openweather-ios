//
//  Weather.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct Weather {
    
    var code: Int
    var wind: Wind
    var timestamp: TimeInterval
    var humidity: Int
    var description: String
    var temperature: Double
    var temperatureMin: Double
    var temperatureMax: Double

}
