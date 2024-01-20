//
//  ContentView.swift
//  AskMeAnythingAlpha
//
//  Created by Mohameth Seck on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    
    let questions = ["What is your favorite color": "color", "what's your favorite TV show": "show", "What hobbies do you enjoy": "hobbies"]
    
    let activityImages = ["show", "color", "hobbies"]
    
    
    @State private var selectedQuestion = "What's your favorite show?"
    @State private var selectedPhoto = "show"
    
    
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Ask me anything")
                        .font(.title)
                    .fontWeight(.bold)
                    
                    Image(systemName: "questionmark.app.fill")
                        .font(.system(size: 80))
                        .foregroundStyle(.purple)
                }
            }
            
            Spacer()
            
            
            VStack {
                Image(selectedPhoto)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .shadow(radius: 10)
                Text(selectedQuestion)
                    .font(.title2)
            }
            
            Spacer()
            
            Button("Ask a question") {
                let randomPair = questions.randomElement() ?? ("What is your favorite color", "color")
                
                selectedPhoto = randomPair.value
                selectedQuestion = randomPair.key
            }
            .buttonStyle(.borderedProminent)
           
                
        } // end VStack
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
