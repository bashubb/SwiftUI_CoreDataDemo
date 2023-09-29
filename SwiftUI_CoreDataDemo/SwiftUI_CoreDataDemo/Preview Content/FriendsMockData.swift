//
//  FriendsMockData.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 29/09/2023.
//

import Foundation
import CoreData

extension FriendsContainer {
   static func addMockData(moc: NSManagedObjectContext) {
        let friend1 = FriendEntity(context: moc)
        friend1.firstName = "Chris"
        friend1.lastName = "Bloom"
        
        let friend2 = FriendEntity(context: moc)
        friend2.firstName = "Jaqueline"
        friend2.lastName = "Cruz"
        
        let friend3 = FriendEntity(context: moc)
        friend3.firstName = "Rodrigo"
        friend3.lastName = "Jones"
        
        try? moc.save()
    }
}
