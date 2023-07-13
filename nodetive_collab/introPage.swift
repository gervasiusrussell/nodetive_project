//
//  introPage.swift
//  Nodetive
//
//  Created by Jennifer Marcellyn Cen on 10/07/23.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Welcome to Nodetive!", description: "This is the sample", imageUrl: "Nodetive", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Manage your schedule", description: "Manage your schedule easily!", imageUrl: "Nodetive1", tag: 0),
        Page(name: "Be more Productive", description: "Improve your productivity with us!", imageUrl: "Nodetive2", tag: 1),
        Page(name: "Friendly reminders", description: "We'll remind you if you go out of track!", imageUrl: "Nodetive3", tag: 2),
    ]
}
