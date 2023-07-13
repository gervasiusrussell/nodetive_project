//
//  ScheduleListView.swift
//  NodetiveAddSchedule
//
//  Created by Winsen Tjen on 12/07/23.
//

import SwiftUI

struct ScheduleListView: View {
    @State var arrSchedule: [ScheduleData] = [
        ScheduleData(id: UUID(), date: "2023-07-13T00:00:00+0000", startTime: 10, endTime: 12, category: "category1", descSch: "Ios Developer"),
        ScheduleData(id: UUID(), date: "2023-07-12T00:00:00+0000", startTime: 10, endTime: 12, category: "category1", descSch: "Ios Developer"),
        ScheduleData(id: UUID(), date: "2023-07-10T00:00:00+0000", startTime: 10, endTime: 12, category: "category1", descSch: "Ios Developer")]
    
    let dateFormatter = DateFormatter()
    
    var body: some View {
        
        VStack{
            List(arrSchedule, id: \.id)
            {
                itemSchedule in
                ScheduleView(bgColor: .cyan, date: strFormatForViewing(strDate: itemSchedule.date), time: "\(itemSchedule.startTime):00 - \(itemSchedule.endTime):00", desc: itemSchedule.descSch)
            }
            Button("Add Data") {
                arrSchedule.append(
                    ScheduleData(id: UUID(), date: "2023-07-09T00:00:00+0000", startTime: 10, endTime: 12, category: "new category3", descSch: "new isd devloper,,cmvnvlksdfp")
                )
            }
        }
    }
    
    func createDate(strDate: String) -> Date{// "2016-04-14T10:44:00+0000"
        let isoDate = strDate

        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from:isoDate)!
        
        return date
    }
    
    func strFormatForViewing(strDate: String) -> String{
        
        let date = createDate(strDate: strDate)
        let dateFormatter = DateFormatter();
//        dateFormatter.dateStyle = .short
        dateFormatter.dateFormat = "dd MMMM yyyy"
        
        return dateFormatter.string(from: date)
    }
    
}

struct ScheduleListView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleListView()
    }
}

