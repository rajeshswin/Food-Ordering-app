//
//  ProfileDetailView.swift
//  FoorOrderingApp
//
//  Created by Balumuri, Rajesh (Cognizant) on 22/05/24.
//

import SwiftUI

struct ProfileDetailView : View {
    
    @State var fName: String = ""
    
    var body: some View {
        NavigationView {
            Text("")
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            
                        }, label: {
                            Image(.logo).padding(.leading, 50)
                            Image(.profile).resizable().frame(width: 44, height: 44)
                        })
                    }
                }
        }.frame(height: 44)
        
        VStack(alignment: .leading) {
            ScrollView {
                Text("Personal information").font(.title).fontWeight(.medium).padding(.leading, -100)
                ProfileSectionView()
                
                TextfieldView(fName: fName, textTitle: "First name", placeHolderText: "Enter first name")
                TextfieldView(fName: fName, textTitle: "Last name", placeHolderText: "Enter last name")
                TextfieldView(fName: fName, textTitle: "Email", placeHolderText: "Enter email")
                TextfieldView(fName: fName, textTitle: "Phone number", placeHolderText: "Enter phone number")
                
                EmailSection()
                
                ButtonSectionView()
            }
        }
        
    }
}

#Preview {
    ProfileDetailView()
}

struct ButtonSectionView: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Logout")
                    .frame(maxWidth: .infinity).font(.title2).frame(height: 50)
            }
            .buttonStyle(.borderedProminent).padding().tint(Color.init(hex: "F4CE14")).foregroundStyle(.black)
        
            HStack(spacing: 20) {
                Button(role: .none) {
                    
                } label: {
                    Text("Discard Changes").padding().foregroundStyle(Color.init(hex: "495E57")).background(
                        RoundedRectangle(cornerRadius: 10.0, style: .continuous).stroke(Color.init(hex: "495E57"), lineWidth: 1)
                    )
                }
                
                Button {
                    
                    
                } label: {
                    Text("Save Changes").padding().foregroundStyle(.white).background(RoundedRectangle(cornerRadius: 10, style: .continuous))
                }.tint(Color.init(hex: "495E57"))
             
                
            }
            
        }
        
        
    }
}

struct EmailSection: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email notification").font(.title).padding(.bottom, 10)
            
            ChecksView(isCheck: true, txtForCheckBox: "Order Statuses")
            ChecksView(isCheck: true, txtForCheckBox: "Password Changes")
            ChecksView(isCheck: true, txtForCheckBox: "Special Offers")
            ChecksView(isCheck: true, txtForCheckBox: "News Letter")
            
        }.padding(.leading, -140)
    }
}

struct ProfileSectionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Avatar")//.padding(.leading, 20)
            HStack(alignment: .center) {
                Image(.profile).resizable().scaledToFit().frame(width: 120, height: 100).padding(.leading, -30)
                Button {
                    
                } label: {
                    Text("Change").padding()
                }.foregroundStyle(.white).background(Color.init(hex: "495E57")).frame(width: 120, height: 60)
                Button {
                    
                } label: {
                    Text("Remove").padding().border(Color.init(hex: "495E57"), width: 1).foregroundStyle(Color.init(hex: "495E57"))
                }
            }
            
        }.padding()
    }
}

struct TextfieldView: View {
    @State var fName: String
    var textTitle: String
    var placeHolderText: String
    @State var showErrorMessage = false

    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(textTitle)
            TextField(placeHolderText, text: $fName)
                .foregroundStyle(.black)
                .overlay {
                    RoundedRectangle(cornerRadius: 10.0, style: .circular).stroke(Color.gray, lineWidth: 1).frame(height: 55).padding(.leading, -15)
                }.padding()
            if showErrorMessage {
                Text("Error in textfield").foregroundStyle(.red)
            }
        }
        .padding()
    }
}

struct ChecksView: View {
    @State var isCheck: Bool = true
    @State var txtForCheckBox: String
    
    var body: some View {
        HStack {
            Image(systemName: isCheck == true ? "checkmark.square.fill" : "squareshape").imageScale(.large)
                .onTapGesture {
                    isCheck.toggle()
                }
            Text(txtForCheckBox)
        }.padding(.bottom, 10)
    }
}
