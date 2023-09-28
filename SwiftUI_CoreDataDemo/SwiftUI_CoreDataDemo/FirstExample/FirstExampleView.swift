//
//  FirstExampleView.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 28/09/2023.
//

import SwiftUI

struct FirstExampleView: View {
    // FetchRequest property wrapper sers up that pipeline to the managed object context
    @FetchRequest(sortDescriptors:[])
    // FetchedResults it is a collection of data ibjects that were retrieved from the store, it is generic so type of data goes into <>
    private var people: FetchedResults<PersonEntity>
    
    @Environment(\.managedObjectContext) var moc
    
    
    var body: some View {
        VStack{
            List(people) {person in
                Text(person.name ?? "")
            }
            
            Button("Add Person") {
                let person = PersonEntity(context: moc)
                person.name = ["Mark", "Lem", "Chase"].randomElement()
                try? moc.save()
            }
        }
        .font(.title)
    }
}

#Preview {
    FirstExampleView()
}
