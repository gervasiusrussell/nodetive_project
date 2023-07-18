//
//  nodetive_collabApp.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 13/07/23.
//

import SwiftUI

@main
struct nodetive_collabApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
