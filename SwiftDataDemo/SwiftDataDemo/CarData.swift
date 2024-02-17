//
//  CarData.swift
//  SwiftDataDemo
//
//  Created by Mohameth Seck on 2/17/24.
//

// https://www.youtube.com/watch?v=krRkm8w22A8&t=777s&ab_channel=CodeWithChris

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
