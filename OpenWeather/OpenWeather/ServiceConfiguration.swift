//
//  ServiceConfiguration.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

enum ServiceConfiguration {
    
    static let apiKey = "03aecda02a3eed372aae9e7d00c2ccc5"
    static let endpoint = "http://api.openweathermap.org/data"
    
    /// Service paths
    static let weatherServicePath = endpoint + "/2.5/weather"
    static let forecastServicePath = endpoint + "/2.5/forecast"
    
}
