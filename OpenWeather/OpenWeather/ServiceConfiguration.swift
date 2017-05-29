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
    static let apiVersion = 2.5
    
    /// Service paths
    static let weatherServicePath = endpoint + "/\(apiVersion)/weather"
    static let forecastServicePath = endpoint + "/\(apiVersion)/forecast"
    
}
