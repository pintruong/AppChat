//
//  CheckBox.swift
//  AppChat
//
//  Created by MacOS on 17/12/2021.
//

import Foundation
import SwiftUI
struct CheckBoxView: View {
    @Binding var checked: Bool
    @Binding var trimVal: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .trim(from: 0, to: trimVal)
                .stroke(style: StrokeStyle(lineWidth: 2))
                .frame(width: 25, height: 25)
                .foregroundColor(checked ? Color.green : Color.gray.opacity(0.2))
            RoundedRectangle(cornerRadius: 0)
                .trim(from: 0, to: 1)
                .fill(checked ? Color.green : Color.gray.opacity(0.2))
                .frame(width: 15, height: 15)
                
            if checked {
                Image(systemName: "checkmark")
                    .foregroundColor(Color.white)
            }
        }
    }
    
    var animationData: CGFloat {
        get {trimVal}
        set {trimVal = newValue}
    }
    
}


