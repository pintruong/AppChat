//
//  File.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import Foundation
import SwiftUI
 
struct PasswordReset: View {
    @State var emaiil: String = ""
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Forgot Password?")
                .font(.system(size: 34))
                .fontWeight(.semibold)
                .padding(.top, 64)
            Text("Mel ea numquam efficiendi appellantur, eu vix reque inermis propriae, animal scaevola.")
                .font(.system(size: 17))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .frame(width: 343, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 16)
            
            VStack(alignment: .leading) {
            TextField("Name", text: $emaiil)
                .frame(width: 375, height: 60)
                .foregroundColor(colorFont)
                .padding(.top, 40)
            Divider()
            }.padding(.leading, 16)
            
            Rectangle()
                .foregroundColor(.white)
            Button(action: {
                
            }, label: {
                Text("Continue")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 343, height: 56)
                    .background(colorButton)
                    .cornerRadius(14.0)
                    .padding(.bottom, 22)
    
            }) //button sign up
                
        }//Vstack all
        
    }
}
struct PasswordResetView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordReset()
    }
}
