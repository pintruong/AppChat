//
//  MyPost.swift
//  AppChat
//
//  Created by MacOS on 16/12/2021.
//

import Foundation
import SwiftUI

struct MyPost: View {
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
                VStack(alignment: .leading) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("NavigationBar")
                            .frame(width: 30, height: 30)
                            .padding(.leading, 16)
                        Spacer()
                    })
                    HStack(alignment: .center) {
                        Text("My Post")
                            .font(.system(size: 34))
                            .fontWeight(.semibold)
                        Spacer()
                        Image("ImageProfile")
                            .frame(width: 34, height: 34)
                    } .padding(.init(top: 3, leading: 16, bottom: 14, trailing: 16))
                    
                    HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search ..", text: $searchText)
                                .foregroundColor(.black)
                        
                    }.frame(width: 375, height: 36) //HStack search
                            .cornerRadius(10.0)
                            .foregroundColor(.gray)
                            .padding(.leading, 16)
               
                }.background(backGroundColor.edgesIgnoringSafeArea(.top)) //Vstack first

            /**       */
            ScrollView(){
                    ScrollView(.horizontal) {
                        LazyHStack(alignment: .center, spacing: 20) {
                        ForEach(0..<1) {_ in
                        Image("ImageViewFirst")
                            .resizable()
                            .frame(width: 200, height: 160)
                            .overlay(TextOverlay(), alignment: .bottomLeading)
                            .overlay(
                                HStack(alignment: .center, spacing: 6) {
                                    Text("6473")
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                    Image("HeartIcon")
                                        .frame(width: 24, height: 24)
                                }.padding(.init(top: 16, leading: 126, bottom: 120, trailing: 12)) //Hstack heart and text
                                    
                            ) //overlay text and heart
                            .cornerRadius(14.0)
                        Image("ImageViewSecond")
                            .resizable()
                            .frame(width: 200, height: 160)
                            .overlay(TextOverlaySecond(), alignment: .bottomLeading)
                            .overlay(
                                HStack(alignment: .center, spacing: 6) {
                                    Text("670")
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                    Image("HeartIcon")
                                        .frame(width: 24, height: 24)
                                }.padding(.init(top: 16, leading: 126, bottom: 120, trailing: 12)) //Hstack heart and text
                                    
                            ) //overlay text and heart
                            .cornerRadius(14.0)
                        Image("ImageViewThird")
                            .resizable()
                            .frame(width: 200, height: 160)
                            .overlay(TextOverlayThird(), alignment: .bottomLeading)
                            .overlay(
                                HStack(alignment: .center, spacing: 6) {
                                    Text("1296")
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                    Image("HeartIcon")
                                        .frame(width: 24, height: 24)
                                }.padding(.init(top: 16, leading: 126, bottom: 120, trailing: 12)) //Hstack heart and text
                                    
                            ) //overlay text and heart
                            .cornerRadius(14.0)
                        Image("ImageViewFourth")
                            .resizable()
                            .frame(width: 200, height: 160)
                            .overlay(TextOverlayFourth(), alignment: .bottomLeading)
                            .overlay(
                                HStack(alignment: .center, spacing: 6) {
                                    Text("3916")
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                    Image("HeartIcon")
                                        .frame(width: 24, height: 24)
                                }.padding(.init(top: 16, leading: 126, bottom: 120, trailing: 12)) //Hstack heart and text
                                    
                            ) //overlay text and heart
                            .cornerRadius(14.0)
                            
                            } //ForEach
                        }.padding(.init(top: 20, leading: 16, bottom: 20, trailing: 0))//LazyHStack
                    }// Scrollview Hstack
                        HStack(alignment: .center) {
                            Text("Other posts")
                                .font(.system(size: 22))
                                .fontWeight(.semibold)
                            Spacer()

                        }.padding(.leading, 16) //Vstack text other post
                        Divider()

                    LazyVStack() {
                        ForEach(0..<2) {_ in
             
                        VStack(alignment: .leading) {
                            HStack(alignment: .center) {
                                Image("ImagePersonSecond")
                                    .frame(width: 40, height: 40)
                                VStack(alignment: .leading) {
                                    Text("Cameron Steward")
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                    Text("2 hours ago")
                                        .font(.system(size: 12))
                                        .foregroundColor(colorFont)
                                } //Vstack name, hours person
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Follow")
                                        .font(.system(size: 12))
                                        .frame(width: 62, height: 32)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8.0)
                                                .stroke(Color.blue, lineWidth: 2)
                                        )
                                })//button follow
                            } .padding(.bottom, 20)//HStack info person
                            
                            Text("#architecture, #relax")
                                .font(.system(size: 12))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 12)
                            Text("Sed affert delenit ea. Nam at ferri facete inermis. Eum dicta fuisset phaedrum ei, etamet iuvaret vituperatoribus vix.")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 12)
                            HStack(alignment: .center) {
                                Image("PhotoOne")
                                    .frame(width: 168, height: 148)
                                    .cornerRadius(14.0)
                                Spacer()
                                Image("PhotoTwo")
                                    .frame(width: 168, height: 148)
                                    .cornerRadius(14.0)
                            } //HStack image
                        }.padding(.init(top: 10, leading: 32, bottom: 20, trailing: 32))//VStack other post
                        } //ForEach
                    } //lazyVStack all
                } //Scrollview all
            
        } //Vstack all
    }
}
struct MyPostView_Previews: PreviewProvider {
    static var previews: some View {
        MyPost()
    }
}
