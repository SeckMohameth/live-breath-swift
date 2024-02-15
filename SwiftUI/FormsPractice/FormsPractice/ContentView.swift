//
//  ContentView.swift
//  FormsPractice
//
//  Created by Mohameth Seck on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var shouldSendNewsLetter = false
    @State private var numberOfLikes = 1
    
    var body: some View {
        NavigationView {
            VStack {
                    Form {
                        Section(header: Text("personal information")) {
                        TextField("Firs Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                            DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    }
                        Section(header: Text("Actions")) {
                            Toggle("Send Newsletter", isOn: $shouldSendNewsLetter)
                                .toggleStyle(SwitchToggleStyle(tint: .red))
                            Stepper("Number of likes", value: $numberOfLikes, in: 1...100)
                            Text("This video has \(numberOfLikes) likes")
                            Link("Terms of Service", destination: URL(string: "https//mohamethseck.com")!)
                        }
                }
                    
            }
            .accentColor(.red)
            .navigationTitle("Account")
        }
    }
}

#Preview {
    ContentView()
}
