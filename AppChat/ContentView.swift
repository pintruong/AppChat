//
//  ContentView.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import SwiftUI

let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .top, endPoint: .bottom)

struct ContentView: View {
///Combine
    @EnvironmentObject var nextPage: PageLoginOnboard
    var body: some View {
        if nextPage.nextPageLoginOnboard == 0 {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("ChatApps")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {
                    nextPage.nextPageLoginOnboard = 1
                }, label: {
                    Text("Login")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 343, height: 56)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                        .padding(.bottom, 8)
                })
                
                Button(action: {
                    
                }, label: {
                    Text("Create Account")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 343, height: 56)
                        .background(Color.gray)
                        .cornerRadius(15.0)
                })
            }.padding(.init(top: 110, leading: 0, bottom: 84, trailing: 0))
        }
        } else {
            Login()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(PageLoginOnboard())
    }
}

/// Combine page login onboarding
class PageLoginOnboard: ObservableObject {
    @Published var nextPageLoginOnboard = 0
    @Published var nextPageCreateOnboard = ""
}
