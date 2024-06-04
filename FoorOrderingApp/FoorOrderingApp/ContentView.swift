//
//  ContentView.swift
//  FoorOrderingApp
//
//  Created by Balumuri, Rajesh (Cognizant) on 22/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    
    @State private var isShowingSettings = false
    
    var body: some View {
        NavigationStack {
            
            //            NavigationView {
            Text("")
                .navigationTitle("")
            
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingSettings = true
                        } label: {
                            Image(.logo).padding(.vertical).padding(.leading, 50)
                            Image(.profile).resizable().frame(width: 44, height: 44)
                        }
                        .navigationDestination(isPresented: $isShowingSettings) {
                            ProfileDetailView()
                        }
                    }
                }
            
//            NavigationLink(destination: ProfileDetailView(), isActive: $isShowingSettings) {
//                
//            }
            VStack {
                HeroView()
                MenuView()
                MenuListView()
            }
        }
        
        
//        NavigationView {
//            Text("").navigationTitle("").navigationBarTitleDisplayMode(.automatic)
//                .toolbar(content: {
//                    Image(.logo).padding(.vertical).padding(.leading, 50)
//                    
//                    NavigationLink(destination: ProfileDetailView()) {
//                        Image(.profile).resizable().scaledToFit().padding(.trailing, -290)
//                    }
//                    
//                    
//                })
//   
//                
//                /*NavigationStack {
//                 Text("").navigationTitle("").navigationBarTitleDisplayMode(.inline)
//                 .toolbar {
//                 
//                 ToolbarItemGroup(placement: .navigationBarLeading) {
//                 Button {
//                 
//                 } label: {
//                 
//                 }
//                 }
//                 ToolbarItem(placement: .navigationBarTrailing) {
//                 
//                 NavigationLink {
//                 ProfileDetailView()
//                 } label: {
//                 Image(.profile).resizable().scaledToFit().padding(.trailing, -280)
//                 }
//                 
//                 }
//                 
//                 ToolbarItem(placement: .principal) {
//                 Image(.logo).padding(.horizontal).padding(.leading, 100)
//                 }
//                 }
//                 
//                 }.frame(height: 44)
//                 */
//               
//                
////            }
//        }
        
//        VStack {
//            HeroView()
//            MenuView()
//            MenuListView()
//        }
    }
}

#Preview {
    ContentView()
}


struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}
