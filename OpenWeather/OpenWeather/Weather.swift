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


extension Weather: JSONSerializable {
    
    init?(json: JSONObject?) {
        guard let weatherResults = json?["weather"] as? [JSONObject],
            let weather = weatherResults.first,
            let code = weather["id"] as? Int,
            let description = weather["main"] as? String,
            let wind = Wind(json: json?["wind"] as? JSONObject),
            let timestamp = json?["dt"] as? TimeInterval
            else {
                return nil
        }
        
        self.code = code
        self.description = description
        self.wind = wind
        self.timestamp = timestamp
        
        guard let main = json?["main"] as? JSONObject,
            let temperature = main["temp"] as? Double,
            let temperatureMin = main["temp_min"] as? Double,
            let temperatureMax = main["temp_max"] as? Double,
            let humidity = main["humidity"] as? Int else {
                return nil
        }
        
        self.temperature = temperature
        self.temperatureMin = temperatureMin
        self.temperatureMax = temperatureMax
        self.humidity = humidity
    }
    
}
