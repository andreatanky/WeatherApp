//
//  CityNameView.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var dt: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 0) {
                Text("Current")
                    .font(.system(size: 20).bold())
            }.foregroundColor(Color(#colorLiteral(red: 0, green: 0.1683244407, blue: 0.1706311405, alpha: 1)))
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
