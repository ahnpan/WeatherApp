//
//  WeatherCell.swift
//  RainShineCloudy
//
//  Created by Ruby Vega on 13/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    func configureCell(forecast : Forecast){
        lowLabel.text = forecast.lowTemp
        highLabel.text = forecast.highTemp
        weatherType.text = forecast.weatherType
        dayLabel.text = forecast.date
        
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }
}
