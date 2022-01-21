//
//  HomeView.swift
//  AppChat
//
//  Created by MacOS on 03/01/2022.
//

import Foundation
import SwiftUI
struct HomeView: View {
    var body: some View {
        TabView {
            MyPost()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Chat()
                .tabItem {
                    Label("Chat", systemImage: "message.fill")
                        
                }
            MyProfile()
                .tabItem {
                    Label("My Account", systemImage: "person.2.fill")
                }
        
        } //TabView
    } //Body
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()

        
            //fix add for enviroment
    }
}
