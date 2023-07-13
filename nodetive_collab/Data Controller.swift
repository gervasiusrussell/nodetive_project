//
//  Data Controller.swift
//  nodetive_collab
//
//  Created by Winsen Tjen on 13/07/23.
//

import Foundation
import CoreData


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Nodetive Database")
    init() {
        container.loadPersistentStores{
            description, error in if let error = error{
                print("Core data failed to load \(error)")
            }
        }
    }
}
