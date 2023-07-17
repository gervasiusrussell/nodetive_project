//
//  QuestionResult1.swift
//  nodetive_collab
//
//  Created by Jennifer Marcellyn Cen on 17/07/23.
//

import SwiftUI

struct QuestionResult1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Productivity Profile")
                    .font(.title)
                    .bold()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.56, green: 0.80, blue: 0.75), Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 400, height: 700)
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 5, height: 0)
                            Image("baby")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Clueless Rookie")
                                .font(.system(size: 20, weight: .heavy))
                                .padding()
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult5()) {
                                    Image("minus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                    Text("1/5")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult2()) {
                                    Image("plus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        VStack(alignment: .center) {
                            Spacer()
                                .frame(width: 0, height: 5)
                            Text("\"Clueless Rookie\" represents a perspective on productivity, where you embark on a journey of growth and development. With the mindset of a \"Clueless Rookie,\" you embrace a humble and open-minded approach, acknowledging that you have much to learn and improve upon.")
                                .multilineTextAlignment(.leading)
                                .frame(width: 355, height: 165)
                                .padding(.top, 20)
                        }
                        Image("rookiechart")
                            .resizable()
                            .frame(width: 300, height: 300)
                        Button(action: {
                            //save
                        }) { NavigationLink(destination: HomeView()){
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
                            NavigationLink(destination: question_view()){
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

struct QuestionResult1_Previews: PreviewProvider {
    static var previews: some View {
        QuestionResult1()
    }
}
