//
//  BottomNavigationBar.swift
//  Type
//
//  Created by Aamos Kekkonen on 20.10.2024.
//

import SwiftUI

struct PrimaryNavBar: View {
    var body: some View {
        Rectangle()
            .frame(height: constants.bottomNavHeight)
            .foregroundColor(constants.dark)
    }
}

#Preview {
    PrimaryNavBar()
}
