//
//  Station.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct Station {
    
    var id: Int
    var name: String
    var latitude: Double
    var longitude: Double
    var country: String?
    var weather: Weather?
    
}


extension Station: JSONSerializable {
    
    init?(json: JSONObject?) {
        guard let name = json?["name"] as? String,
            let id = json?["id"] as? Int
        else {
            return nil
        }
        
        self.name = name
        self.id = id

        guard let coordinates = json?["coord"] as? JSONObject,
            let latitude = coordinates["lat"] as? Double,
            let longitude = coordinates["lon"] as? Double
        else {
                return nil
        }
        
        self.latitude = latitude
        self.longitude = longitude

        // Country can be populated in different ways
        self.country = json?["country"] as? String
        if self.country == nil {
            self.country = (json?["sys"] as? JSONObject)?["country"] as? String
        }

        self.weather = Weather(json: json)
    }
    
}
