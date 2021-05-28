//
//  WeatherResponse.swift
//  Weather_App
//
//  Created by ANDREA TAN on 28/5/21.
//

import Foundation

struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
}
