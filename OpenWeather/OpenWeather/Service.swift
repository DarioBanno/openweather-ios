//
//  Service.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

protocol Service {
    var apiPath: String { get }
    var httpClient: HTTPClient { get }
    
    init(httpClient: HTTPClient)
}

extension Service {

    func apiQuery(name: String? = nil, id: Int? = nil) -> [String:Any] {
        var dictionary: [String: Any] = ["APPID": ServiceConfiguration.apiKey]
        
        if let name = name { dictionary["q"] = name }
        if let id = id { dictionary["id"] = id }
        
        return dictionary
    }

}
