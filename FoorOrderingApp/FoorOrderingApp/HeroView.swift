//
//  HeroView.swift
//  FoorOrderingApp
//
//  Created by Balumuri, Rajesh (Cognizant) on 22/05/24.
//

import SwiftUI

struct HeroView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                Text("Little Lemon").font(.title).fontWeight(.bold).foregroundStyle(.yellow)
                Text("Location").font(.title2).fontWeight(.bold).foregroundStyle(.white).padding([.bottom], 10)
                HStack {
                    Text("An image that features the wireframe you constructed in the design phase, and your app project files that will allow a reviewer to run your app.").fontWeight(.regular).foregroundStyle(.white)
                    Image(.hero).resizable().frame(width: 120, height: 120).clipShape(.rect(cornerRadius: 20))
                }
                
                
            }.padding()
            
        }.background(Color(hex: "495E57"))
        
    }
}

#Preview {
    HeroView()
}

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        VStack {
            List {
                Text("Search Bar")
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("Search")
        
    }
}
