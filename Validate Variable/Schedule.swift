//
//  Schedule.swift
//  nodetive_collab
//
//  Created by Winsen Tjen on 13/07/23.
//

import Foundation
import SwiftUI

struct ScheduleData: Hashable, Codable {
    var id: UUID
    var date: String
    var startTime: Int32
    var endTime: Int32
    var category: String
    var descSch: String
}

class TaskViewModel: ObservableObject {
    @Published var showDatePicker: Bool = false
}
