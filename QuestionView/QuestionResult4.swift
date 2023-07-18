//
//  QuestionResult4.swift
//  nodetive_collab
//
//  Created by Jennifer Marcellyn Cen on 17/07/23.
//

import SwiftUI

struct QuestionResult4: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Productivity Profile")
                    .font(.title)
                    .bold()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.75, green: 0.84, blue: 0.87), Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 400, height: 700)
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 5, height: 0)
                            Image("elite")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Elite Conqueror")
                                .font(.system(size: 20, weight: .heavy))
                                .padding()
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult3()) {
                                    Image("minus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                Text("4/5")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult5()) {
                                    Image("plus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        Spacer()
                            .frame(width: 0, height: 5)
                        Text("Being an \"Elite Conqueror\" goes beyond simply getting things done. It's about conquering your personal and professional goals with mastery and finesse. You'll leverage cutting-edge tools, innovative techniques, and time-tested strategies to optimize your productivity and maximize your impact.")
                            .multilineTextAlignment(.leading)
                            .frame(width: 355, height: 165)
                            .padding(.top, 20)
                        Image("elitechart")
                            .resizable()
                            .frame(width: 300, height: 300)
                        Button(action: {
                            //save
                        }) { NavigationLink(destination: ContentView3()){
                            Text("Save Changes")
                        }
                        .frame(width: 150, height: 40)
                        .background(Color(red: 1.0, green: 0.87, blue: 0.87))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2))
                        }.padding(.top, 5)
                        Button(action: {
                            //save
                        }) {
                            NavigationLink(destination: QuestionView()){
                                Text("Retake Quiz")
                                    .foregroundColor(.black)
                            }
                        }.padding(.top, 5)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct QuestionResult4_Previews: PreviewProvider {
    static var previews: some View {
        QuestionResult4()
    }
}
