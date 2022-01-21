//
//  NumHeart.swift
//  AppChat
//
//  Created by MacOS on 19/12/2021.
//

import Foundation
import SwiftUI
struct NumHeart {
    var body: some View {
        ZStack {
        HStack(){
            Text("6473")
                .font(.system(size: 13))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .padding(6)
            Image("HeartIcon")
                .foregroundColor(.white)
                .frame(width: 24, height: 24)
                .padding()
        }
    }
}
}
