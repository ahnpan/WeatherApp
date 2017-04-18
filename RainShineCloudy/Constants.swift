//
//  Constants.swift
//  RainShineCloudy
//
//  Created by Ruby Vega on 11/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import Foundation

let BASE_URL  = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE  = "lat="
let LONGITUDE = "&lon="
let APP_ID    = "&appid="
let API_KEY   = "64d4c8d783c4d446349cdf574fc2e325"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(Location.sharedInstance.latitude!)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=64d4c8d783c4d446349cdf574fc2e325"
