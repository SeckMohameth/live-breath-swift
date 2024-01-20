//
//  ContentView.swift
//  Sandwiches
//
//  Created by Mohameth Seck on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                HStack {
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundStyle(.secondary)
                    Spacer()
                }
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
        }
        detail: {
            
        }
    }
}

#Preview {
    ContentView(sandwiches: testData)
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            HStack {
                Image(systemName: "photo")
                
                VStack(alignment: .leading) {
                    Text(sandwich.name)
                    Text("\(sandwich.ingredientCount) Ingredients")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}
