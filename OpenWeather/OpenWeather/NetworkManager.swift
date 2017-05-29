//
//  NetworkManager.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct NetworkManager {
    
    static let shared = NetworkManager()
    
    let httpClient = HTTPClient(urlSession: URLSession(configuration: URLSessionConfiguration.default))
    
    
    // MARK: - Services
    
    var forecastService: ForecastService { return ForecastService(httpClient: httpClient) }
    var weatherService: WeatherService { return WeatherService(httpClient: httpClient) }
    
}
