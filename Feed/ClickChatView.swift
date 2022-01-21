//
//  ClickChatView.swift
//  AppChat
//
//  Created by MacOS on 21/01/2022.
//

import Foundation
import SwiftUI

struct ClickChatView: View {
    var body: some View {
        NavigationView {
            VStack() {
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {
                        Text("Chat first")
                    }
                    VStack(alignment: .trailing) {
                        Text("Chat second")
                    }
                }
            }
            
        }
    }
}

struct ClickChatView_Previews: PreviewProvider {
    static var previews: some View {
        ClickChatView()
    }
}


