//
//  HeaderBanner.swift
//  AppChat
//
//  Created by MacOS on 03/01/2022.
//

import Foundation
import SwiftUI

struct HeaderBanner: View {
    @AppStorage("rValue") var rValue = DefaultSettings.rValue //
    @AppStorage("gValue") var gValue = DefaultSettings.gValue /// Color is change in Settingview
    @AppStorage("bValue") var bValue = DefaultSettings.bValue //
    @State private var image = UIImage() /// import combine Image
    @State private var isShowPhotoLibrary = false ///import combine show photolibraly
    @State var isPresented = false   /// import push button in settingview
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .foregroundColor(Color(red: rValue, green: gValue, blue: bValue, opacity: 1.0))
                .edgesIgnoringSafeArea(.top)
                .frame(height: 245)
            //
            VStack {
                HStack(alignment: .center) {
                    Button (
                        action: { self.isPresented = true },
                        label: {
                            Text("Settings")
                                .foregroundColor(.white)
                    })
                    .sheet(isPresented: $isPresented, content: {
                        SettingsView()
                    }) /// import push button SettingsView in Button: Setting
                    
                    Spacer()
                    Text("Profile")
                        .font(.system(size: 32))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Button (
                        action: {
                            //Action
                        },
                        label: {
                            Text("Logout")
                                .foregroundColor(.white)
                    }) /// import push button ____ in Button: Logout
                    
                }.padding(.init(top: 32, leading: 16, bottom: 0, trailing: 16)) ///HStack button top profile
                Image(uiImage: self.image) ///import image seft auto change to Combine
                    .resizable()
                    .scaledToFill()
                    .frame(width: 158, height: 158)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .shadow(radius: 100)
                    .padding(.top, 60)
                    .overlay(Button (
                        action: {
                            self.isShowPhotoLibrary = true
                        },
                        label: {
                            Image("ImageIconCameraCopy")
                                .frame(width: 40, height: 40)
                                .background(Color.black)
                                .cornerRadius(100.0)
                                .padding(.trailing, 10)
       
                        }
                    ).sheet(isPresented: $isShowPhotoLibrary) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                            /// import push change avatar image
                    }, alignment: .bottomTrailing)
            } ///VStack header
            } //ZStack
    } //Var
} // Struct

struct HeaderBannerView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBanner() ///fix add for enviroment
    }
}
