//
//  MenuHeader.swift
//  Weather_App
//
//  Created by ANDREA TAN on 30/5/21.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    @State private var searchTerm = "Singapore"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
                .foregroundColor(.black)
            
            
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: "magnifyingglass")
                }
                .padding(.trailing, 10)
            }
            .frame(width: 40, height: 30)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.pink.opacity(0.3))
                .padding(.leading, 10)
                .padding(.trailing, 10)
        })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
