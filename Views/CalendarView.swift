//
//  calendarview.swift
//  nodetive_collab
//
//  Created by Jennifer Marcellyn Cen on 7/13/23.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let date: Date
    let startTime: Date
    let endTime: Date
    let description: String
}

struct CalendarView: View {
    @State var selectedDate: Date = Date()
    
    let tasks: [Task] = [
//        Task(date: Date().addingTimeInterval(86400), startTime: Date(), endTime: Date(), description: "Task 1 Description"),
        Task(date: Date().addingTimeInterval(86400), startTime: Date(), endTime: Date(), description: "Task 2 Description"),
        Task(date: Date().addingTimeInterval(172800), startTime: Date(), endTime: Date(), description: "Task 3 Description")
    ]
    
    var selectedTasks: [Task] {
        tasks.filter { Calendar.current.isDate($0.date, inSameDayAs: selectedDate) }
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Calendar")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer().frame(height: 40)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray)
                        .shadow(color: .black, radius: 5)
                        .frame(width: 350, height: 50)
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
                    .foregroundColor(.accentColor)
                
                Divider()
                ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        if selectedTasks.isEmpty {
                            Text("No task")
                                .font(.body)
                                .foregroundColor(.gray)
                                .padding()
                        } else {
                            ForEach(selectedTasks) { task in
                                TaskBoxView(task: task)
                            }
                        }
                    }
                }
                
                Spacer()
//                    .frame(width: 0, height: 10)
                
                Button(action: {
                    // Edit schedule action
                }) {
                    NavigationLink(destination: AddScheduleView()) {
                        Text("Edit Schedule")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.accentColor)
                            )
                    }
                }
                
//                Spacer().frame(height: 120)
            }
        }
    }
}

struct TaskBoxView: View {
    let task: Task
    
    var body: some View {
//        ScrollView{
            VStack(alignment: .leading, spacing: 8) {
                Text("Date: \(task.date.formatted(date: .abbreviated, time: .omitted))")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Text("Start Time: \(task.startTime.formatted(date: .omitted, time: .shortened))")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Text("End Time: \(task.endTime.formatted(date: .omitted, time: .shortened))")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Text("Description: \(task.description)")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray.opacity(0.1))
            )
//        }
        .padding([.horizontal, .bottom])
    }
}




struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}



