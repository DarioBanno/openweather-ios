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
