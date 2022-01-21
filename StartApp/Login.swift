//
//  Login.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import Foundation
import SwiftUI

struct Login: View {
    // Create En button view
    @EnvironmentObject var appInfo: AppInformation
    @EnvironmentObject var nextPage: PageLoginOnboard
    // Create En button view
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
            // dk add buttonview
            if appInfo.appPage == 0 {
                
            // dk add button view
                
            VStack(alignment: .center) {
                Image("AppleIcon")
                    .frame(width: 37, height: 44, alignment: .center)
                    .padding(.top, 48)
                Text("Login")
                    .font(.system(size: 34))
                    .fontWeight(.semibold)
                    .padding(.top, 35)
                Text("Welcome back, Sign in to continue etiam tacimates sed ad")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .frame(width: 343, height: 44, alignment: .center)
                    .padding(.top, 16)
                
                VStack(alignment: .leading) {
                    TextField("Email", text: $email)
                        .frame(width: 375, height: 60)
                        .foregroundColor(colorFont)
                    
                    Divider()
                    SecureField("Password", text: $password)
                        .frame(width: 375, height: 60)
                        .foregroundColor(colorFont)
                }.padding(.leading, 16) //Vstack Textfield
                
                VStack(alignment: .trailing) {
                    Button(action: {}, label: {
                        Text("Forgot password?")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(colorButton)
                            .padding(.trailing, 16)
                            .padding(.top, 8)
                    })
                    Rectangle()
                        .foregroundColor(.white)
                }//Vstack forgot
                Button(action: {}, label: {
                    Text("Sign in")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 343, height: 56)
                        .background(colorButton)
                        .cornerRadius(14.0)
                        .padding(.bottom, 22)
                    
                }) //button
                HStack(alignment: .center) {
                    Text("Don't have an account?")
                        .font(.system(size: 17))
                        .fontWeight(.regular)
                        .foregroundColor(colorFont)
                    // button view more
                    Button(action: { appInfo.appPage = 1 })
                    {
                        Text("Create account")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(colorButton)
                    }
                }.padding(.bottom, 32) //HStack create account
      
                }//VStack all
            } else {
                CreateAccount()
        }// else
        //finalize En view

    } //body
} //struct all
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Login().environmentObject(AppInformation()) //fix add for enviroment
    }
}
class AppInformation: ObservableObject {
    @Published var appPage = 0
    @Published var TextShared = ""
}


