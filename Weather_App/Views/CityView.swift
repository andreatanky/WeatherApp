//
//  CityView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct CityView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, dt: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HStack {
                Text("Forecast / Hourly").bold()
                    .padding(.leading, 20)
                    .font(.system(size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                
                Spacer()
            }
            HourlyWeatherView(cityVM: cityVM)
            HStack {
                Text("Forecast / Weekly").bold()
                    .padding(.leading, 20)
                    .font(.system(size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .padding(.top, 10)
                
                Spacer()
            }
            DailyWeatherView(cityVM: cityVM)
        }.padding(.bottom, 30)
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
