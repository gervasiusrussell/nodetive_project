//
//  QuestionView5.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 14/07/23.
//

import SwiftUI

struct QuestionView5: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("daily-tasks")
                    .resizable()
                    .frame(width:250, height:250)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Pinky1"))
                        .ignoresSafeArea()
                        .frame(width: 400, height: 500)
                    
                    ScrollView{
                        VStack{
                            Text("How well do you manage your time")
                                .font(.system(size: 20))
                                .multilineTextAlignment(.center)
                            Text("and prioritize tasks?")
                                .font(.system(size: 20))
                            Spacer()
                                .frame( height: 20)
                            Button(action: {
                                // Action for button 1
                            }) {
                                NavigationLink(destination: QuestionResult1()) {
                                    Text("Very poorly")
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
                                NavigationLink(destination: QuestionResult2()) {
                                    Text("Somewhat poorly")
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
                                NavigationLink(destination: QuestionResult3()) {
                                    Text("Fairly well")
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
                                NavigationLink(destination: QuestionResult5()) {
                                    Text("Very well")
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
                                NavigationLink(destination: ContentView2()) {
                                    Text("Skip for later")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                                        .padding()
                                }
                            }
                        }
                    }
                    .padding(.top, 40.0)
                    
                    VStack {
                        Spacer()
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color("Color1"))
                                .ignoresSafeArea()
                                .frame(width: 500, height: 100)
                            VStack{
                                Text("Question 5 of 5")
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .ignoresSafeArea()
                                        .frame(width: 300, height: 10)
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.black)
                                        .ignoresSafeArea()
                                        .frame(width: 240, height: 10)
                                        .offset(x:-30)
                                }
                                Text("80%")
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }
    .navigationBarBackButtonHidden(true)    }
}

struct QuestionView5_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView5()
    }
}
