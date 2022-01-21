//
//  TestAppChat.swift
//  AppChat
//
//  Created by MacOS on 03/01/2022.
//

import Foundation
import SwiftUI
struct TestAppChat: View {
    var body: some View {
        VStack() {
        Label("Today", systemImage: "chevron.forward")
            .labelStyle(DefaultLabelStyle())
            //
        }
    }
}
struct TestAppChatView_Previews: PreviewProvider {
    static var previews: some View {
        TestAppChat() //fix add for enviroment
    }
}
