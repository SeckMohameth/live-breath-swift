//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Mohameth Seck on 1/20/24.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    var body: some View {
        VStack {
            Image(systemName: "picture")
            
            
            if sandwich.isSpicy {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .font(.headline)
                .background(Color.red)
                .padding()
                .foregroundStyle(.yellow)
            }
                
        }
        .navigationTitle(sandwich.name)
        
    }
}

#Preview {
    NavigationView {
        SandwichDetail(sandwich: testData[0])
    }
}
