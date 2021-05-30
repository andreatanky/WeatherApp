//
//  ContentView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 28/5/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding(.top, 50)
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top, 40)
            }.background(Rectangle().foregroundColor(Color(#colorLiteral(red: 0.7718173862, green: 0.9342723489, blue: 0.9700935483, alpha: 1))))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
