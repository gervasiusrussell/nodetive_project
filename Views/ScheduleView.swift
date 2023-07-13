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
    @State var date: String
    @State var time: String
    @State var desc: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 350,height: 120)
                .foregroundColor(Color("Color3"))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius:10)
                        .stroke(Color("Color2"), lineWidth: 2)
                )
            VStack {
                HStack{
                    Text(date)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                        .frame(width: 100, height: 10)
                    
                    Text(time)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                Spacer()
                    .frame(height: 20)
                
                Text(desc)
                    .frame(width: 300, height: 30, alignment: .leading)
                    .foregroundColor(.black)
                
            }
            Spacer()
                .frame(height: 120)
        }
        .padding()
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(bgColor: .cyan, date: "10 Jul 2023", time: "10:00 - 14:00", desc: "ios Foundation")
    }
}

