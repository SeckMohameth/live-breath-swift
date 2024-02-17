//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Mohameth Seck on 2/17/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
