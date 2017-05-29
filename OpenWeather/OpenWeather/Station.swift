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
    var country: String
    
}


extension Station: JSONSerializable {
    
    init?(json: JSONObject?) {
        guard let name = json?["name"] as? String,
            let id = json?["id"] as? Int,
            let country = json?["country"] as? String
        else {
            return nil
        }
        
        
        self.name = name
        self.id = id
        self.country = country

        guard let coordinates = json?["coord"] as? JSONObject,
            let latitude = coordinates["lat"] as? Double,
            let longitude = coordinates["lon"] as? Double
        else {
                return nil
        }
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
}
