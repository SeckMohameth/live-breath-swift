//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Mohameth Seck on 2/18/24.
//

// https://www.youtube.com/watch?v=O0FSDNOXCl0&ab_channel=Indently

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
