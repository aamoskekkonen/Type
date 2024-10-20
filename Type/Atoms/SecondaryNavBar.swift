//
//  TopNavigationBar.swift
//  Type
//
//  Created by Aamos Kekkonen on 20.10.2024.
//

import SwiftUI

struct SecondaryNavBar: View {
    var body: some View {
        HStack {
            SecondaryNavBarButton(icon: "arrow.left", action: {})
            Spacer()
            SecondaryNavBarButton(icon: "slider.horizontal.3", action: {})
        }
    }
}

private struct SecondaryNavBarButton: View {
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .frame(width: constants.mediumCircle,
                           height: constants.mediumCircle)
                    .foregroundColor(constants.light)
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: constants.bottomNavIconSize,
                           height: constants.bottomNavIconSize)
                    .foregroundColor(constants.black)
            }
            .padding(constants.margin)
        }
    }
}

#Preview {
    SecondaryNavBar()
}
