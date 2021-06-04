//
//  DailyWeatherView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct DailyWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(cityVM.weather.daily) { weather in
                    LazyVStack {
                        dailyView(weather: weather)
                    }
                }
            }
        }
    }
    
    private func dailyView(weather: DailyWeather) -> some View {
        
        VStack {
            Text(cityVM.getDayFor(timestamp: weather.dt)).frame(width: 90)
            
            Spacer()
            
            LottieView(name: cityVM.getLottieAnimationFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "dayClearSky"))
                .frame(width: 90, height: 90)
            
//            cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
            
            Spacer()
            
            Text(String(format: "%.1f°", (weather.temp.min + weather.temp.max)/2))
                .font(.system(size: 21))
            
            Spacer()
            
            HStack (spacing: 10){
                VStack {
                    Text("\(cityVM.getTempFor(temp: weather.temp.min))°")
                        .frame(width: 50)
                        .padding(.bottom, 5)
                        .padding(.top, 5)
                    Text("🔽")
                }
                VStack {
                    Text("\(cityVM.getTempFor(temp: weather.temp.max))°")
                        .frame(width: 50)
                        .padding(.bottom, 5)
                        .padding(.top, 5)
                    Text("🔼")
                }
//                Text("\(cityVM.getTempFor(temp: weather.temp.min)) - \(cityVM.getTempFor(temp: weather.temp.max))🔽 ℃")
//                    .frame(width: 120)
//                    .padding(.bottom, 5)
//                    .padding(.top, 5)
            }
            
        }
        .foregroundColor(.white)
    .padding(.horizontal, 17)
     .padding(.vertical, 15)
        .background(RoundedRectangle(cornerRadius: 15).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .top, endPoint: .bottom)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
