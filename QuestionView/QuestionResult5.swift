//
//  QuestionResult5.swift
//  nodetive_collab
//
//  Created by Jennifer Marcellyn Cen on 17/07/23.
//

import SwiftUI

struct QuestionResult5: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Productivity Profile")
                    .font(.title)
                    .bold()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 1.00, green: 0.91, blue: 0.77), Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 400, height: 700)
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 5, height: 0)
                            Image("trophy")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Supreme Hustler")
                                .font(.system(size: 20, weight: .heavy))
                                .padding()
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult4()) {
                                    Image("minus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                Text("5/5")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult1()) {
                                    Image("plus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        Spacer()
                            .frame(width: 0, height: 5)
                        Text("\"Supreme Hustler\" is a transformative productivity approach that empowers individuals to maximize their output and achieve their goals with unmatched efficiency. By embracing the \"Supreme Hustler\" mindset, you'll work smarter, set clear objectives, and execute tasks with speed and precision. ")
                            .multilineTextAlignment(.leading)
                            .frame(width: 355, height: 165)
                            .padding(.top, 20)
                        Image("supremechart")
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

struct QuestionResult5_Previews: PreviewProvider {
    static var previews: some View {
        QuestionResult5()
    }
}
