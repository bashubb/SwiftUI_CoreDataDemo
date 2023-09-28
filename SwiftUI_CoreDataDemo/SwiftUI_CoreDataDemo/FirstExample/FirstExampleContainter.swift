//
//  FirstExampleContainter.swift
//  SwiftUI_CoreDataDemo
//
//  Created by HubertMac on 28/09/2023.
//

import Foundation
import CoreData

class FirstExampleContainter {
    let persistentContainer: NSPersistentContainer
    
    init(){
        
        persistentContainer = NSPersistentContainer(name: "FirstExample")
        persistentContainer.loadPersistentStores {_, _ in}
    }
}
