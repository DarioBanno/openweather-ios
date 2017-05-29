//
//  ForecastTableViewDataSource.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import UIKit

class ForecastTableViewDataSource: NSObject, UITableViewDataSource {
    
    var forecast: WeatherForecast?
    
    // Display date in the following format: Jan 23, 5:10
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, hh:mm"
        return formatter
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecast?.weatherList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ForecastTableViewCell = tableView.dequeueReusable(for: indexPath)!
        let weather = forecast!.weatherList[indexPath.row]
        let weatherViewModel = ForecastViewModel(weather: weather)
        
        cell.temperatureMinLabel.text = weatherViewModel.temperatureMin
        cell.temperatureMaxLabel.text = weatherViewModel.temperatureMax
        cell.iconLabel.text = weatherViewModel.iconString
        cell.dateTimeLabel.text = dateFormatter.string(from: Date(timeIntervalSince1970: weather.timestamp))
        return cell
    }
    
}
