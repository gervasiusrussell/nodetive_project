//
//  QuestionView3.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 14/07/23.
//

import SwiftUI

struct QuestionView3: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("watching-tv")
                    .resizable()
                    .frame(width:250, height:250)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Pinky1"))
                        .ignoresSafeArea()
                        .frame(width: 400, height: 500)
                    VStack{
                        Text("How many hours do you have available")
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        Text("for free time and leisure activities")
                            .font(.system(size: 20))
                        Text("during a typical weekday?")
                            .font(.system(size: 20))
                        Spacer()
                            .frame( height: 20)
                        Button(action: {
                            // Action for button 1
                        }) {
                            NavigationLink(destination: QuestionView4()) {
                                Text("Less than 2 hours")
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
                                NavigationLink(destination: QuestionView4()) {
                                Text("2-3 hours")
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
                                NavigationLink(destination: QuestionView4()) {
                                Text("4-5 hours")
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
                                NavigationLink(destination: QuestionView4()) {
                                Text("5 or more hours")
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
                            NavigationLink(destination: HomeView()) {
                                Text("Skip for later")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                    .padding()
                            }
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
                                Text("Question 3 of 5")
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .ignoresSafeArea()
                                        .frame(width: 300, height: 10)
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.black)
                                        .ignoresSafeArea()
                                        .frame(width: 120, height: 10)
                                        .offset(x:-90)
                                }
                                Text("40%")
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }
    .navigationBarBackButtonHidden(true)

    }
}

struct QuestionView3_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView3()
    }
}
