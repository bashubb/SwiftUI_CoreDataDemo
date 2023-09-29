//
//  FriendsContainer.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 29/09/2023.
//

import CoreData
import Foundation

class FriendsContainer {
    
    static var preview: NSManagedObjectContext {
        get {
            let persistentContainer = NSPersistentContainer(name: "FriendsDataModel")
            persistentContainer.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
            persistentContainer.loadPersistentStores{_, _ in}
            addMockData(moc: persistentContainer.viewContext)
            return persistentContainer.viewContext
        }
        
    }
    
    
    let persistentContainer: NSPersistentContainer
    
    init(forPreview: Bool = false) {
        persistentContainer = NSPersistentContainer(name: "FriendsDataModel")
        
        if forPreview {
            persistentContainer.persistentStoreDescriptions.first!.url! = URL(fileURLWithPath: "/dev/null")
        }
        
        persistentContainer.loadPersistentStores {_, _ in}
        
        if forPreview {
            FriendsContainer.addMockData(moc: persistentContainer.viewContext)
        }
    }
}



