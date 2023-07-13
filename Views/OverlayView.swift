//
//  OverlayView.swift
//  NodetiveAddSchedule
//
//  Created by Winsen Tjen on 12/07/23.
//

import SwiftUI

struct OverlayView: View {
    @State var descriptionDescription: String = ""
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var currentDate = Date()
    @State private var currentDate1 = Date()

    func getCurrentTime() -> String{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let dateString = formatter.string(from: Date())
        return dateString
    }
    
    var body: some View {
        let currentTime = getCurrentTime()
        
        VStack{
            HStack{
                Text("Add New Schedule")
                    .font(.title2)
            }
            
            Spacer()
                .frame(width: 0, height: 50)
            
            HStack{
                Button(action: {
                }) {
                    Text(currentTime)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.trailing, 230.0)
                        .background(Rectangle()
                            .fill(Color("Color"))
                            .frame(width: 350, height: 50)
                            .cornerRadius(8)
                            .shadow(radius: 2, x: 0, y: 4)
                            .overlay(Image(systemName: "chevron.down")
                                .foregroundColor(Color.black)
                                .padding(.leading, 290.0)
                                .frame(width: 2.0, height: 2.0)
                            )
                        )
                }
            }
            
            Spacer()
                .frame(width: 0, height: 40)
            
            HStack{
                Spacer()
                    .frame(width: 20, height: 0)
                Text("Start Time")
                Spacer()
                    .frame(width: 80, height: 0)
                Text("End Time")
                Spacer()
                    .frame(width: 20, height: 0)
            }
            
            HStack{
                Button(action:{
                }) {
                    DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                }
                
                Spacer()
                    .frame(width: 70, height:0)
                
                Button(action:{
                }) {
                    DatePicker("", selection: $currentDate1, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                }
                
                Spacer()
                    .frame(width:0, height: 40)
            }
            
            VStack{
                Text("Select a Category")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            HStack{
                Spacer()
                    .frame(width: 40,height: 0)
                ButtonView(isSelected: $isSelected, color: Color("Color1"), text: "Productivity")
                    .onTapGesture {
                        isSelected.toggle()

                        if isSelected {
                            isSelected2 = false
                        }
                    }
                
                Spacer()
                    .frame(width: 50, height: 0)
                
                ButtonView(isSelected: $isSelected2, color: Color("Color1"), text: "Leisure")
                    .onTapGesture {
                        isSelected2.toggle()

                        if isSelected2 {
                            isSelected = false
                    }
                }
                
                Spacer()
                    .frame(width: 50, height: 0)
                
            }
            Spacer()
                .frame(width: 0, height: 60)
            
            Group {
                VStack {
                    VStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color("Color"))
                            .frame(width: 280, height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                            .overlay(
                                Text("Description")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                            )
                    }
                    
                    Spacer()
                        .frame(width: 0, height: -10)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                            .frame(width: 280, height: 150)
                            .foregroundColor(Color.white)
                            .overlay(TextField("Type description here..", text: $descriptionDescription)
                                .offset(x: 10, y: -50)
                            )
                    }
                }
                
                Spacer()
                    .frame(width: 0, height: 120)
                
                VStack{
                    Button(action:{
                    }) {
                        Text("Save Changes")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(Color("Color")))
                    }
                }
            }
            
        }
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}

