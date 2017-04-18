//
//  Location.swift
//  RainShineCloudy
//
//  Created by Ruby Vega on 13/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import CoreLocation

class Location{

    static var sharedInstance = Location()
    
    private init(){}
    
    var latitude: Double!
    var longitude: Double!
}
