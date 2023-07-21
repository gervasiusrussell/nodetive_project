//
//  ScheduleView.swift
//  NodetiveAddSchedule
//
//  Created by Winsen Tjen on 12/07/23.
//

import SwiftUI

struct ScheduleView: View {
    //    @State var id: UUID
    @State var bgColor: Color
    @State var selectedDate: String
    @State var startTime: String
    @State var endTime: String
    @State var desc: String
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 350,height: 100)
                .foregroundColor(bgColor)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius:10)
                        .stroke(Color(.black), lineWidth: 2)
                )
            VStack {
                HStack{
                    Text(selectedDate)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                        .frame(width: 80, height: 0)
                    
                    Text(startTime)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                    
                    Text("-")
                    
                    Text(endTime)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                }.padding(.all, 5)
                
                Text(desc)
                    .frame(width: 280, alignment: .leading)
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
            }
        }
        .padding()
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(bgColor: .cyan, selectedDate: "22 July 2023" ,startTime: "10:00", endTime: "14:00", desc: "ios Foundation")
    }
}

