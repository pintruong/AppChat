//
//  Chat.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import SwiftUI
struct Chat: View {
    @State var searchTextChat: String = ""
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("22 December, 2019")
                    .font(.system(size: 15))
                    .foregroundColor(colorFont)
                HStack(alignment: .center) {
                    Text("Chat")
                        .font(.system(size: 34))
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("ImageEditChat")
                    }) //Button Edit Chat
                } // HStack top
            }.padding(.init(top: 25, leading: 16, bottom: 14, trailing: 16))
            .background(backGroundColor.edgesIgnoringSafeArea(.top)) //Vstack first
        Spacer()
            ScrollView() {
                LazyVStack() {
                    ForEach(0..<1) {_ in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack(alignment: .center) {
                                Image("ImagePersonChat")
                                    .padding(.init(top: 4, leading: 0, bottom: 4, trailing: 6))
                                VStack(alignment: .leading){
                                    HStack() {
                                        Text("Ronald Robertson")
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                        Text("Today")
                                            .font(.system(size: 15))
                                            .foregroundColor(colorFont)
                                        Image("ImageClickChat")
                                            .frame(width: 6, height: 10)
                                    } .padding(.bottom, 0.25)
                                    
                                    Text("An suas viderer pro. Vis cu magna altera, ex his vivendo atomorum.")
                                        .font(.system(size: 13))
                                        .foregroundColor(colorFont)
                                    
                                } //VStack messange
                        } .padding(.init(top: 24, leading: 16, bottom: 16, trailing: 16)) //Hstack all info chat
                        }) // Button Click Messange
                    } //ForEach
                } // LazyVStackview all mesange
            } //Scrollview messange
        }// VStack all view
        
    } //Var
} //Struct

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        Chat() //fix add for enviroment
    }
}
