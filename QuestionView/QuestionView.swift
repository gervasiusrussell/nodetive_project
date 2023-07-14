//
//  question view.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 14/07/23.
//

import SwiftUI
import Foundation

struct question_view: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("sleep")
                    .resizable()
                    .frame(width:250, height:250)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Pinky1"))
                        .ignoresSafeArea()
                        .frame(width: 400, height: 500)
                    VStack{
                        Text("On average, how many hours do")
                            .font(.system(size: 20))
                        Text("you sleep each night?")
                            .font(.system(size: 20))
                        Spacer()
                            .frame( height: 40)
                        Button(action: {
                            // Action for button 1
                        }) {
                            NavigationLink(destination: QuestionView2()) {
                                Text("Less than 5 hours")
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color("pink lagi"))
                            .cornerRadius(10)
                        }
                        
                        
                        Button(action: {
                            // Action for button 2
                            }) {
                                NavigationLink(destination: QuestionView2()) {
                                Text("5-6 hours")
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color("pink lagi"))
                            .cornerRadius(10)
                        }
                        
                               Button(action: {
                            // Action for button 3
                            }) {
                                NavigationLink(destination: QuestionView2()) {
                                Text("7-8 hours")
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color("pink lagi"))
                            .cornerRadius(10)
                        }
                        
                                      Button(action: {
                            // Action for button 4
                            }) {
                                NavigationLink(destination: QuestionView2()) {
                                Text("9 or more hours")
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color("pink lagi"))
                            .cornerRadius(10)
                        }
                        
                        Button(action: {
                            // Action for the button
                        }) {
                            Text("Skip for later")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                    .padding()
                    
                    VStack {
                        Spacer()
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color("Color1"))
                                .ignoresSafeArea()
                                .frame(width: 500, height: 100)
                            VStack{
                                Text("Question 1 of 5")
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .ignoresSafeArea()
                                    .frame(width: 300, height: 10)
                                Text("0%")
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }
    }
}

struct question_view_Previews: PreviewProvider {
    static var previews: some View {
        question_view()
    }
}