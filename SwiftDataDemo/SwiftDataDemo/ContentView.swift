//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Mohameth Seck on 2/17/24.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    // retrieve an array of instances of DataItem
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
           
            Text("Tap to add car data")
            Button("Add item"){
                addItem()
            }
            
            List {
                ForEach (items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "pencil")
                        }
                       
                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(items[index])
                    }
                }
            }
        }
        .padding()
    }
    
    // =============== functions ================
    
    func addItem() {
        // create the item
        let item = DataItem(name: "toyota")
        
        
        // add item to data context
        context.insert(item)
    }
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem){
        //edit item data
        item.name = "updated test item"
        
        // then save the context
        try? context.save()
    }
    
    // =============== functions ================
    
}

#Preview {
    ContentView()
}
