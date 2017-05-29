//
//  ForecastTableViewCell.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var temperatureMinLabel: UILabel!
    @IBOutlet weak var temperatureMaxLabel: UILabel!
    @IBOutlet weak var iconLabel: UILabel! {
        didSet {
            iconLabel.font = UIFont(name: "WeatherIcons-Regular", size: 20)
        }
    }
    
}
