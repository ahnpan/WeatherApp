//
//  Utilities.swift
//  RainShineCloudy
//
//  Created by Ruby Vega on 13/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import Foundation

extension Double {
    var toFahrenheit: Double {
        return self * 1.8 - 459.67
    }
    
    var toCelcius : Double{
        return self - 273.15
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: self)
    }
}


func roundToTenths(_ value: Double) -> Double {
    return round(10 * value) / 10
}
