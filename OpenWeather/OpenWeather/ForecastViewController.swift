//
//  ForecastViewController.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import UIKit

class ForecastViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var conditionsLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var iconLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadCurrentWeather()
    }
    
    
    // MARK: Network calls
    
    func loadCurrentWeather() {

        NetworkManager.shared.weatherService.fetch(name: "London, GB") { (station: Station?, error: HTTPClientError?) in
            Logger.print(station)
        }

//        NetworkManager.shared.weatherService.fetch(id: station.id) { (station, error) in
//            DispatchQueue.main.async { [weak self] in
//                if let speed = station?.wind?.speed {
//                    let attributedString = NSMutableAttributedString(string: String(describing: speed))
//                    let mphString = NSAttributedString(string: "mph", attributes: [
//                        NSFontAttributeName: UIFont.systemFont(ofSize: 17)
//                        ])
//                    attributedString.append(mphString)
//                    self?.speedLabel.attributedText = attributedString
//                }
//            }
//        }
    }

}
