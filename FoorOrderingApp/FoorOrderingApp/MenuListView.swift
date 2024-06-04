//
//  MenuListView.swift
//  FoorOrderingApp
//
//  Created by Balumuri, Rajesh (Cognizant) on 28/05/24.
//

import SwiftUI

struct MenuListView: View {
    
    
    
    var body: some View {
        ScrollView {
            ListCell(title: "Green Salad", descrp: "Onboarding screen when the app is opened for the first time, which prompts you to enter your personal detail", price: "$12.99", imgName: .greekSalad)
            ListCell(title: "Brushetta", descrp: "Onboarding screen when the app is opened for the first time, which prompts you to enter your personal detail", price: "$20.99", imgName: .bruschetta)
            ListCell(title: "Grilled Fish", descrp: "Onboarding screen when the app is opened for the first time, which prompts you to enter your personal detail", price: "$245.00", imgName: .grilledFish)
            ListCell(title: "Pasta", descrp: "Onboarding screen when the app is opened for the first time, which prompts you to enter your personal detail", price: "$12.99", imgName: .pasta)
            ListCell(title: "Lemon Dessert", descrp: "Onboarding screen when the app is opened for the first time, which prompts you to enter your personal detail", price: "$55.50", imgName: .lemonDessert)
        }
    }
}


struct ListCell: View {
    var title: String?
    var descrp: String?
    var price: String?
    var imgName: ImageResource
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title ?? "").padding(.bottom, 1).font(.title).bold()
           
            HStack {
                VStack(alignment: .leading) {
                    Text(descrp ?? "").lineLimit(2).foregroundStyle(Color.black.opacity(0.7))
                    Text(price ?? "").fontWeight(.bold).font(.title2).padding([.top], 10).foregroundStyle(Color.init(hex: "495E57").opacity(0.8))
                }
                Image(imgName).resizable().frame(width: 100, height: 100)
            }
            
        }
        .padding()
    }
}

#Preview {
    MenuListView()
}
