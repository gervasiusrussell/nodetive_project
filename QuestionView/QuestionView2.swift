//
//  QuestionView2.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 14/07/23.
//

import SwiftUI

struct QuestionView2: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("hard-work")
                    .resizable()
                    .frame(width:250, height:250)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Pinky1"))
                        .ignoresSafeArea()
                        .frame(width: 400, height: 500)
                    
                    ScrollView{
                        VStack{
                            Text("How many hours do you spend on")
                                .font(.system(size: 20))
                                .multilineTextAlignment(.center)
                            Text("productive activities (work, studies,")
                                .font(.system(size: 20))
                            Text("etc.) during a typical weekday?")
                                .font(.system(size: 20))
                            Spacer()
                                .frame( height: 20)
                            Button(action: {
                                // Action for button 1
                            }) {
                                NavigationLink(destination: QuestionView3()) {
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
                                NavigationLink(destination: QuestionView3()) {
                                    Text("2-4 hours")
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
                                NavigationLink(destination: QuestionView3()) {
                                    Text("5-7 hours")
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
                                NavigationLink(destination: QuestionView3()) {
                                    Text("8 or more hours")
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
                                Text("Question 2 of 5")
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .ignoresSafeArea()
                                        .frame(width: 300, height: 10)
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.black)
                                        .ignoresSafeArea()
                                        .frame(width: 60, height: 10)
                                        .offset(x:-120)
                                }
                                Text("20%")
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }
    .navigationBarBackButtonHidden(true)

    }
}

struct QuestionView2_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView2()
    }
}
