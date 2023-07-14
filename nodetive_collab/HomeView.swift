//
//  ContentView.swift
//  Testproduct
//
//  Created by Saputra Tanuwijaya on 7/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack{
                Image("logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                Spacer()
                
                Button(action:/*Input action*/ {
                    
                }) {
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.accentColor)
                        .overlay(
                            Image(systemName: "bell")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 30, height: 30)
                        )}
                
                Button(action:/*Input action*/ {
                    // Checkpage()
                }) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                
            }.frame(width:355,height:50)
            
            
            HStack{
                VStack(alignment: .leading){
                    Text("Welcome,")
                        .fontWeight(.medium)
                    Text("Gervasius Russell")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Spacer()
            } .frame(width:340,height:60)
            
            Rectangle()
                .frame(width:340, height:50)
                .foregroundColor(.accentColor)
            //Ubah pake dropdown
            
            Text("RUSSEL'S ACTIVITY")
                .font(.system(size: 30,weight: .medium, design: .rounded ))
            Text("00.00")
            ZStack {
                Rectangle()
                    .frame(width: 2, height: 300) // Garis timeline
                HStack{
                    Spacer()
                    VStack {
                        Spacer()
                        Circle()
                            .frame(width: 100, height:50)
                            .foregroundColor(.accentColor)
                            .overlay(
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .frame(width: 50, height:50)
                            )
                    }
                }
            }
            Text("23.59")
            
            Spacer()
                .frame(width: 0, height: 20)
            Rectangle()
                .cornerRadius(10)
                .frame(width: 340, height: 150)
                .foregroundColor(.white)
                .shadow(color : .black, radius: 5)
                .overlay(
                    Rectangle()
                        .stroke(Color.accentColor, lineWidth: 16)
                        .cornerRadius(10) )
                .overlay(
                    VStack {
                        HStack {
                            Image(systemName: "bed.double")
                                .resizable()
                                .frame(width: 60, height: 40)
                            Spacer()
                                .frame(width: 50, height: 0)
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 50, height: 40)
                            Spacer()
                                .frame(width: 50, height: 0)
                            Image(systemName: "briefcase")
                                .resizable()
                                .frame(width: 50,height: 40)
                        }
                        
                        HStack {
                            Spacer()
                                .frame(width: 30)
                            
                            Text("Sleep")
                            Spacer()
                                .frame(width: 50, height: 0)
                            Text("Leisure")
                            Spacer()
                                .frame(width: 35, height: 0)
                            Text("Productive")
                            
                            
                        }
                        Spacer()
                            .frame(width: 0, height: 20)
                        
                        HStack {
                            Spacer()
                                .frame(width: 0)
                            
                            Text("8 Hrs")
                            Spacer()
                                .frame(width: 55, height: 0)
                            Text("8 Hrs")
                            Spacer()
                                .frame(width: 60, height: 0)
                            Text("8 Hrs")
                            
                        }
                        
                    }
                    
                )
            
            
            Spacer()
            
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

