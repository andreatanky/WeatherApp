//
//  DailyWeather.swift
//  Weather_App
//
//  Created by ANDREA TAN on 28/5/21.
//

import Foundation

struct DailyWeather: Codable, Identifiable {
    var date: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case date
        case temp
        case weather
    }
    
    init() {
        date = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
