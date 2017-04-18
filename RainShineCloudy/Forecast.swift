//
//  Forecast.swift
//  RainShineCloudy
//
//  Created by Ruby Vega on 13/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import UIKit
import Alamofire

class Forecast{

    private var _date : String!
    private var _weatherType : String!
    private var _lowTemp: String!
    private var _highTemp: String!
    
    var date : String{
    
        if _date == nil{
            _date = ""
        }
        
        return _date
    }
    
    var weatherType : String{
        
        if _weatherType == nil{
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp : String{
        
        if _highTemp == nil{
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp : String{
        
        if _lowTemp == nil{
            _lowTemp = ""
        }
        
        return _lowTemp
    }
    
    init(weatherDict : Dictionary<String, AnyObject>){
        
        if let temp = weatherDict["temp"] as? Dictionary<String,AnyObject>{
            if let min = temp["min"] as? Double{
                self._lowTemp = "\(min.toCelcius)"
            }
            
            if let max = temp["max"] as? Double{
                self._highTemp = "\(max.toCelcius)"
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>]{
            
            if let main = weather[0]["main"] as? String{
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double{
            let convertedDate = Date(timeIntervalSince1970: date)
            self._date = convertedDate.dayOfTheWeek()
        }
    }
    
}
