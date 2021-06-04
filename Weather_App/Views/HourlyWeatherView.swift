//
//  HourlyWeatherView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct HourlyWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(cityVM.weather.hourly) { weather in
                    
                    let icon = weather.weather.count > 0 ? weather.weather[0].icon : "dayFewClouds"
//                    let icon = cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
                    let hour = cityVM.getTimeFor(timestamp: weather.dt)
                    let temp = cityVM.getTempFor(temp: weather.temp)
                    getHourlyView(hour: hour, image: icon, temp: temp)
                    
                }
            }
        }
    }
    
    private func getHourlyView(hour: String, image: String, temp: String) -> some View {
        VStack(spacing: 10) {
            Text(hour)
            LottieView(name: cityVM.getLottieAnimationFor(icon: image))
                .frame(width: 80, height: 80)
//            image.foregroundColor(Color(#colorLiteral(red: 0.9882352941, green: 0.9176470588, blue: 0.8705882353, alpha: 1))).font(.system(size: 25))
       
            Text(temp + "°")
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 15).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9823332429, green: 0.5144231915, blue: 0.2341812551, alpha: 1)), Color(#colorLiteral(red: 0.9818031192, green: 0.5200657248, blue: 0.233071357, alpha: 1))]), startPoint: .top, endPoint: .bottom)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
