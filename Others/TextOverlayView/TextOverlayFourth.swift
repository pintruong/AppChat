//
//  TextOverlayFourth.swift
//  AppChat
//
//  Created by MacOS on 19/12/2021.
//

import Foundation
import SwiftUI
struct TextOverlayFourth: View {
    var body: some View {
        ZStack {
        Text("Sunset")
            .font(.callout)
            .padding(6)
            .foregroundColor(.white)
            
        }.background(Color.black)
        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        .cornerRadius(10.0)
        .padding(6)
        //ZStack
    }
}
