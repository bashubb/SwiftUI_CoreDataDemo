//
//  DataModels.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 28/09/2023.
//

import SwiftUI

// The problem
// Core data needs to know how to store a Person object.
// Data models need to defined in a specal way before working with them in Core Data

struct Person {
    let name: String
    let age: Int
}


struct DataModels: View {
    @State private var name = ""
    @State private var age = 0
    

    var body: some View {
        VStack {
            TextField("name", text: $name)
            TextField("age",value: $age, format: .number)
            
            Button("Save") {
                let newPerson =  Person(name: name, age: age)
                // Save data somewhere
                
                
            }
        }
        .font(.title)
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    DataModels()
}
