//
//  QuestionView4.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 14/07/23.
//

import SwiftUI

struct QuestionView4: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("tiredness")
                    .resizable()
                    .frame(width:250, height:250)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Pinky1"))
                        .ignoresSafeArea()
                        .frame(width: 400, height: 500)
                    VStack{
                        Text("How often do you feel rested and")
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        Text("energized after a night's sleep?")
                            .font(.system(size: 20))
                        Spacer()
                            .frame( height: 20)
                        Button(action: {
                            // Action for button 1
                        }) {
                            NavigationLink(destination: QuestionView5()) {
                                Text("Rarely or never")
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
                                NavigationLink(destination: QuestionView5()) {
                                Text("Occasionally")
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
                                NavigationLink(destination: QuestionView5()) {
                                Text("Most of the time")
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
                                NavigationLink(destination: QuestionView5()) {
                                Text("Almost always")
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
                                Text("Question 4 of 5")
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .ignoresSafeArea()
                                        .frame(width: 300, height: 10)
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.black)
                                        .ignoresSafeArea()
                                        .frame(width: 180, height: 10)
                                        .offset(x:-60)
                                }
                                Text("60%")
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }
    .navigationBarBackButtonHidden(true)
    }
}

struct QuestionView4_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView4()
    }
}
