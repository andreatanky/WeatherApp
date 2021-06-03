//
//  TodayWeatherView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 20) {
                VStack(alignment: .center) {
                    Text("\(cityVM.temperature)℃")
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 56))
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 10))
                    Text(cityVM.conditions)
                        .padding(.bottom, 20)
                        .font(.system(size: 24))
                }
            }
            HStack(spacing: 10) {
                
                VStack(alignment: .leading) {
                    HStack {
                        widgetView(image: "drop.fill", color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), title: "")
                            .padding(.leading, 6)
                        Text("  Humidity").bold()
                        Text(cityVM.humidity)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    }.padding(.bottom, 1)
                    HStack {
                        widgetView(image: "umbrella.fill", color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), title: "")
                            .padding(.leading, 3)
                        Text(" Rainfall").bold()
                        Text(cityVM.rainChances)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    }.padding(.bottom, 1)
                    HStack {
                        widgetView(image: "wind", color: Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), title: "\(cityVM.rainChances)")
                            .padding(.leading, 4)
                        Text("Wind").bold()
                        Text("\(cityVM.windSpeed) mi/h")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    }
                }
                LottieView(name: cityVM.getLottieAnimationFor(icon: cityVM.weatherIcon))
                    .frame(width: 160, height: 160)
                    .padding(.leading, 20)
            }
            
        }
        .padding()
        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(#colorLiteral(red: 0.1450980392, green: 0.8078431373, blue: 0.8196078431, alpha: 1))))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    
    private func widgetView(image: String, color: Color, title: String) -> some View {
        VStack {
            Image(systemName: image)
                .font(.system(size: 25))
                .foregroundColor(color)
//                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            
            //Text(title)
        }
    }
}

struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
