//
//  ContentView.swift
//  AddPassenger-SwiftUI
//
//  Created by Ali Pishvaee on 5/17/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5916794538, green: 0.6303998828, blue: 0.6984714866, alpha: 1))
            VStack {
                Spacer()
                Image("userAvatar")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                    .clipShape(Circle())
                    .shadow(color: Color.white, radius: 30, x: -10, y: -10)
                    .shadow(color: Color.black, radius: 30, x: 10, y: 10)
                    .padding(.bottom, 10)
                Text("David Jerome")
                    .font(.system(size: 28, weight: .semibold, design: .default))
                    .foregroundColor(Color.white)
                Text("Jerome@Gmail.com")
                    .font(.system(size: 18, weight: .regular, design: .default))
                    .foregroundColor(Color.white)
                    .padding()
                HStack {
                    VStack {
                        Button(action: handleButton, label: {
                            Image(systemName: "doc")
                                .resizable()
                                .accentColor(Color.black)
                                .frame(width: 25, height: 25, alignment: .center)
                            
                        })
                            
                            .frame(width: 70, height: 70, alignment: .center)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.white, radius: 30, x: -10, y: -10)
                            .shadow(color: Color.black.opacity(0.7), radius: 30, x: 10, y: 10)
                        
                        Text("Passenger documents")
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .frame(width: 80, height: 50, alignment: .center)
                            .foregroundColor(.white)
                    }
                    .padding([.leading,.trailing], 40)
                    
                    VStack {
                        Button(action: handleButton, label: {
                            Image(systemName: "bell")
                                .resizable()
                                .accentColor(Color.black)
                                .frame(width: 25, height: 25, alignment: .center)
                            
                        })
                            
                            .frame(width: 70, height: 70, alignment: .center)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.white, radius: 30, x: -10, y: -10)
                            .shadow(color: Color.black.opacity(0.7), radius: 30, x: 10, y: 10)
                        
                        Text("Flight price trackings")
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .frame(width: 80, height: 50, alignment: .center)
                            .foregroundColor(.white)
                    }.padding(.trailing, 40)
                    
                    
                    VStack {
                        Button(action: handleButton, label: {
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .accentColor(Color.black)
                                .frame(width: 25, height: 25, alignment: .center)
                            
                        })
                            .frame(width: 70, height: 70, alignment: .center)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.white, radius: 30, x: -10, y: -10)
                            .shadow(color: Color.black.opacity(0.7), radius: 30, x: 10, y: 10)
                        
                        Text("Help \n center")
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .frame(width: 80, height: 50, alignment: .center)
                            .foregroundColor(.white)
                    }.padding(.trailing, 40)
                }
                .padding(.bottom, 30)
                ScrollView (.vertical, showsIndicators: false) {
                    HStack {
                        Text("Settings")
                        .font(.system(size: 32, weight: .bold, design: .default))
                        Spacer()
                    }
                    SettingRowView(image: "phone", title: "Phone number", action: "Add number").padding(.bottom, 15)
                    SettingRowView(image: "language", title: "Language", action: "English (eng)").padding(.bottom, 15)
                    SettingRowView(image: "currency", title: "Currency", action: "US Dollar ($)").padding(.bottom, 15)
                    SettingRowView(image: "distance", title: "Distance units", action: "Mile").padding(.bottom, 15)
                    SettingRowView(image: "home", title: "Country / region", action: "Canada").padding(.bottom, 15)
                    
                }
            
                .padding([.top, .leading, .trailing], 30)
                .padding(.bottom, 40)
                .background(Color.white)
                .cornerRadius(20)
            }.padding(.top, 40)
        }.edgesIgnoringSafeArea(.all)
    }
    
    func handleButton() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
           ContentView()
    }
}


struct SettingRowView: View {
    var image: String
    var title: String
    var action: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color.gray)
            Text(title).font(.system(size: 17, weight: .regular, design: .default))
            Spacer()
            Text(action)
                .font(.system(size: 13, weight: .regular, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)))
            
            
            
        }
    }
}
