//
//  Weather.swift
//  Weather_App
//
//  Created by ANDREA TAN on 28/5/21.
//

import Foundation

class Weather: Codable, Identifiable {
    var date: Int
    var temp: Double
    var feels_like: Double
    var pressure: Int
    var humidity: Int
    var dew_point: Double
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case date
        case temp
        case feels_like
        case pressure
        case humidity
        case dew_point
        case clouds
        case wind_speed
        case wind_deg
        case weather
    }
    
    init() {
        date = 0
        temp = 0.0
        feels_like = 0.0
        pressure = 0
        humidity = 0
        dew_point = 0.0
        clouds = 0
        wind_speed = 0.0
        wind_deg = 0
        weather = []
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}

// Sunrise and sunset values are not present for Hourly values
//class WeatherSubclass: Weather {
//    var sunset: Int
//    var sunrise: Int
//}
