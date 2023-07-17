//
//  QuestionResult3.swift
//  nodetive_collab
//
//  Created by Jennifer Marcellyn Cen on 17/07/23.
//

import SwiftUI

struct QuestionResult3: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Productivity Profile")
                    .font(.title)
                    .bold()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.75, green: 0.61, blue: 0.92), Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 400, height: 700)
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 5, height: 0)
                            Image("maestro")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Typical Maestro")
                                .font(.system(size: 20, weight: .heavy))
                                .padding()
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult2()) {
                                    Image("minus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                    Text("3/5")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                            }
                            Button(action: {
                                // Action for the button
                            }) {
                                NavigationLink(destination: QuestionResult4()) {
                                    Image("plus")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }
                            }
                        }
                        VStack(alignment: .center) {
                            Spacer()
                                .frame(width: 0, height: 5)
                            Text("\"Typical Maestro\" embodies a revolutionary method for productivity, where you excel at conducting tasks and projects with mastery. Adopting the \"Typical Maestro\" mindset enhances your performance and leaves a remarkable impression akin to a captivating musical composition.")
                                .multilineTextAlignment(.leading)
                                .frame(width: 355, height: 165)
                                .padding(.top, 20)
                        }
                        Image("maestrochart")
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
                            NavigationLink(destination: QuestionView2()){
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

struct QuestionResult3_Previews: PreviewProvider {
    static var previews: some View {
        QuestionResult3()
    }
}
