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
                        .fill(Color(#colorLiteral(red: 0.9196747541, green: 0.2115088999, blue: 0.04895227402, alpha: 1)))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: "magnifyingglass")
                }
            }
            .frame(width: 40, height: 30)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 0)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white.opacity(0.3))
        })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
