//
//  ContentView.swift
//  FormsPractice
//
//  Created by Mohameth Seck on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Firs Name", text: $firstName)
            }
        }
    }
}

#Preview {
    ContentView()
}
