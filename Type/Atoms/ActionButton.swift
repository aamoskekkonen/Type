//
//  ActionButton.swift
//  Type
//
//  Created by Aamos Kekkonen on 20.10.2024.
//

import SwiftUI

struct ActionButton: View {
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .frame(width: constants.smallCircle,
                           height: constants.smallCircle)
                    .foregroundColor(constants.white)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: constants.chipIconSize, height: constants.chipIconSize)
                    .foregroundColor(constants.black)
            }
        }
    }
}

#Preview {
    ActionButton(icon: "bookmark", action: {})
}
