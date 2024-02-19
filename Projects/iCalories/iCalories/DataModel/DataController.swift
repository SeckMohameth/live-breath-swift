//
//  DataController.swift
//  iCalories
//
//  Created by Mohameth Seck on 2/18/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FoodModel") // where values are stored
    
    init() { // all this to load the data
        container.loadPersistentStores{ desc, error in
            if let error = error {
                print("failed to load data \(error.localizedDescription)")
            }
        }
    }
    
    // saving the data
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("data saved")
        } catch {
            print("failed to save")
        }
    }
    
    
    //add food
    func addFood(name: String, calories: Double, context: NSManagedObjectContext) {
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
    
    
    //edit food
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext) {
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
}
