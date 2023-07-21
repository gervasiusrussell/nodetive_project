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
    let startTime: String
    let endTime: String
    let description: String
}

struct CalendarView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @State var selectedDate: Date = Date()
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.date)
    ]) var schedules: FetchedResults<Schedule>
    
    
        let tasks: [Task] = [
            Task(date: Date().addingTimeInterval(86400), startTime: "10:00", endTime: "15:00", description: "Task 1 Description"),
            Task(date: Date().addingTimeInterval(86400), startTime: "10:00", endTime: "15:00", description: "Freelance at cafe"),
            Task(date: Date().addingTimeInterval(172800), startTime: "10:00", endTime: "15:00", description: "Task 3 Description")
        ]
    
    
    var selectedTasks: [Schedule] {
        schedules.filter { schedule in
            Calendar.current.isDate(schedule.date!, inSameDayAs: selectedDate)
        }
        //        tasks.filter { Calendar.current.isDate($0.date, inSameDayAs: selectedDate) }
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
                    Spacer()
                        .frame(width: 0, height: 10)
                    VStack(alignment: .leading) {
                        if selectedTasks.isEmpty {
                            Text("No task")
                                .font(.body)
                        } else {
                            ForEach(selectedTasks) { task in
                                //                                ScheduleView(bgColor: Color("Color3"), selectedDate: "\(task.date!)", startTime: "\(task.startTime!)", endTime: "\(task.endTime!)", desc: task.descSch!)
                                ScheduleView(bgColor: task.category! == "Leisure" ?  Color("Leisure 1") : Color("Color3"), selectedDate: "\(task.date!.formatted(date: .abbreviated, time: .omitted))", startTime: "\(task.startTime!.formatted(date: .omitted, time: .shortened))", endTime: "\(task.endTime!.formatted(date: .omitted, time: .shortened))", desc: task.descSch!)
                            }
                            
                        }
                        //                        if selectedTasks.isEmpty {
                        //                            Text("No task")
                        //                                .font(.body)
                        //                                .foregroundColor(.gray)
                        //                                .padding()
                        //                        } else {
                        //                            ForEach(selectedTasks) { task in
                        //                                TaskBoxView(task: task)
                        //                            }
                        //                        }
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
            }
        }.navigationBarBackButtonHidden(true)
            .onAppear{
                print(selectedTasks)
                print(selectedDate)
            }
    }
}

struct TaskBoxView: View {
    let task: Task
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("\(task.date.formatted(date: .abbreviated, time: .omitted))")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Text("\(task.startTime)")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Text("    -")
                
                Text("\(task.endTime)")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding(.leading)
            }
            
            Text("\(task.description)")
                .font(.body)
                .foregroundColor(.black)
                .padding(.leading)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(red: 0.98, green: 0.92, blue: 0.85))
        )
        .padding([.horizontal, .bottom])
    }
}




struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
