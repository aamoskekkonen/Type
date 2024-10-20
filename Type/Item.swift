//
//  Item.swift
//  Type
//
//  Created by Aamos Kekkonen on 20.10.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
