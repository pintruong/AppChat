//
//  MyProfile.swift
//  AppChat
//
//  Created by MacOS on 03/01/2022.
//

import Foundation
import SwiftUI
struct MyProfile: View {
    @State var isPresented = false

    var body: some View {
        VStack {
            VStack {
                HeaderBanner()
                ProfileText()
            }
            Spacer()
        }
    }
}

struct ProfileText: View {
    @AppStorage("name") var name = DefaultSettings.name
    @AppStorage("subtitle") var subtitle = DefaultSettings.subtitle
    @AppStorage("description") var description = DefaultSettings.description
    
    var body: some View {
        VStack(spacing: 15) {
            VStack(spacing: 5) {
                Text(name)
                    .bold()
                    .font(.title)
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.secondary)
            }.padding()
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        } //VStack all
    } //Body
}
struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile() //fix add for enviroment
    }
}
