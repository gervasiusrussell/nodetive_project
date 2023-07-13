//
//  calendarview.swift
//  nodetive_collab
//
//  Created by Shyra Alexandria on 7/13/23.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        
        VStack {
            Text("Calendar")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius:10)
                    .stroke(.gray)
                    .shadow(color: .black,radius: 5)
                    .frame(width:350,height:50)
                    .opacity(0.3)
                
                
                
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .animation(.spring(), value: selectedDate)
                    .frame(width: 500)
                
                
            }
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
                .foregroundColor(Color.accentColor)
                
            Divider()
            
            Button("Edit Schedule") {
                print("Button Tapped")
            }
            .buttonStyle(.bordered)
            .tint(Color.accentColor)
            .foregroundColor(.white)
        }
        
        .padding(.vertical, 100)
        .padding(.horizontal,5)
        
        
    }
    
    
}
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}



