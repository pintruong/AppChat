//
//  CreateAccount.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import Foundation
import SwiftUI

struct CreateAccount: View {
    //Add En view more
    @EnvironmentObject var appInfo: AppInformation
    //Add En view more
    @State var name: String = ""
    @State var emaill: String = ""
    @State var passwordd: String = ""
    //checkbox
    @State var trimVal: CGFloat = 0
    @State var checked = false
    //checkbox
    
    var body: some View {

        VStack(alignment: .center) {
            Spacer()
            Image("AppleIcon")
                .frame(width: 37, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 40)
            Text("Create Account")
                .font(.system(size: 34))
                .fontWeight(.semibold)
                .padding(.top, 35)
            Text("Nec nihil affert partiendo ne, quo no iisque etiam tacimates sed conceptam.")
                .font(.system(size: 17))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .frame(width: 343, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 16)
            
            VStack(alignment: .leading) {
                TextField("Name", text: $name)
                    .frame(width: 375, height: 60)
                    .foregroundColor(colorFont)
                    .padding(.top, 40)
                Divider()
                TextField("Email", text: $emaill)
                    .frame(width: 375, height: 60)
                    .foregroundColor(colorFont)
                Divider()
                TextField("Password", text: $passwordd)
                    .frame(width: 375, height: 60)
                    .foregroundColor(colorFont)
                Divider()
                
                HStack(alignment: .center) {
                    Button(action: {
                        checked.toggle()
                    }) {
                        CheckBoxView(checked: $checked, trimVal: $trimVal)
                    } //checkbox
                    Text("I agree with our")
                        .font(.system(size: 17))
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Terms")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(colorButton)
                    })//button terms
                    Text("and")
                        .font(.system(size: 17))
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Conditions")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(colorButton)
                    })
                }.padding(.top, 20)//hstack checkbox
                
            }.padding(.leading, 16)//VStack textfield & checkbox
            Rectangle()
                .foregroundColor(.white)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Create Account")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 343, height: 56)
                    .background(colorButton)
                    .cornerRadius(14.0)
                    
    
            }) //button sign up
            HStack(alignment: .center) {
                Text("Already have an account?")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(colorFont)
               // button En views2
                Button(action: { appInfo.appPage = 0 })
                {
                    Text("Log In")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(colorButton)
                }
            }.padding(.top, 22) //HStack create account
        }.padding(.bottom, 32) //vstack all

            
            
        }//navigationView
    }

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
