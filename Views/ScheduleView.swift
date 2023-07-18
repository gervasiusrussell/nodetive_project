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
                .frame(width: 300,height: 150)
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
                        .padding(.bottom)
                    
                    Spacer()
                        .frame(width: 60, height: 60)
                    
                    Text(time)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom)
                }
                Spacer()
                    .frame(width: 20, height: 10)
                
                Text(desc)
                    .frame(width: 260, height: 20, alignment: .leading)
                    .foregroundColor(.black)
                    .padding(.top)
                
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

