//
//  SharingView.swift
//  AppChat
//
//  Created by MacOS on 18/12/2021.
//

import Foundation
import SwiftUI


struct SharingView: App {
    @StateObject var appInfo = AppInformation()
    
    var body: some Scene {
        WindowGroup {
            Login()
                .environmentObject(appInfo)
        }
        
    }
}
