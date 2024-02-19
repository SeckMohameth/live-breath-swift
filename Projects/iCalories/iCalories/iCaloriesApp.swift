//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Mohameth Seck on 2/18/24.
//

import SwiftUI

@main
struct iCaloriesApp: App {
     //inject database to be used throughout the project
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
