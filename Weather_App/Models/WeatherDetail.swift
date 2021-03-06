//
//  WeatherDetail.swift
//  Weather_App
//
//  Created by ANDREA TAN on 28/5/21.
//

import Foundation

/**
  Of Weather Array in API
 */
struct WeatherDetail: Codable {
    var main: String
    var description: String
    var icon: String
}
