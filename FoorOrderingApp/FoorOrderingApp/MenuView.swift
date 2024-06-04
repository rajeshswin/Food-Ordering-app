//
//  MenuView.swift
//  FoorOrderingApp
//
//  Created by Balumuri, Rajesh (Cognizant) on 28/05/24.
//

import SwiftUI

struct MenuView: View {
    
    let menuList = ["Starters", "Main", "Desserts", "Drinks"]
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("ORDER FOR DELIVERY!").font(.title).bold().padding([.bottom, .leading], 5)
                ScrollView(.horizontal) {
                    LazyHStack(content: {
                        ForEach(menuList, id: \.self) { val in
                            MenuButton(titleStr: val)
                        }
                    })
                    .padding(.leading, 5)
                }
                .frame(height: 70)
            }
        }
        
    }
}


struct MenuButton: View {
    var titleStr: String
    var body: some View {
        Button(action: {
            
            
            
        }, label: {
            Text(titleStr).padding([.top, .trailing, .bottom, .leading], 9).background(Color.init(hex: "495E57").opacity(0.3)).font(.title2).fontWeight(.semibold).foregroundStyle(Color.init(hex: "495E57")).clipShape(.rect(cornerRadius: 30))
        })
        
    }
}
#Preview {
    MenuView()
}
