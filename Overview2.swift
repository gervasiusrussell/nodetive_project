//
//  Overview2.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 15/07/23.
//

import SwiftUI

struct OverviewCase1: View {
    var body: some View {
        VStack{
            Text("Your undefined is below 40%, Good Job!")
                .fontWeight(.bold)
            
            Spacer()
                .frame(height:70)
            
            HStack{
                Spacer()
                    .frame(width: 0)
                Text("Productivity ")
                    .font(.body)
                Spacer()
                    .frame(width: 35)
                Text("Sleep")
                    .font(.body)
                Spacer()
                    .frame(width: 55)
                Text("Leisure")
                    .font(.body)
                Spacer()
                    .frame(width: 10)
            }
            
            HStack{
                Rectangle()
                    .frame(width: 20, height: 280)
                    .foregroundColor(Color("silver"))
                    .cornerRadius(30)
                    .overlay(
                        VStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 20, height: 250)
                                .foregroundColor(Color("prod"))
                                .cornerRadius(30)
                        }
                    )
                
                Spacer()
                    .frame(width: 90)
                Rectangle()
                    .frame(width: 20, height: 280)
                    .foregroundColor(Color("silver"))
                    .cornerRadius(30)
                    .overlay(
                        VStack{
                            Spacer()
                            Rectangle()
                                .frame(width: 20, height: 180)
                                .foregroundColor(Color("sleep"))
                                .cornerRadius(30)
                        }
                    )
                Spacer()
                    .frame(width: 90)
                Rectangle()
                    .frame(width: 20, height: 280)
                    .foregroundColor(Color("silver"))
                    .cornerRadius(30)
                    .overlay(
                        VStack{
                            Spacer()
                            Rectangle()
                                .frame(width: 20, height: 220)
                                .foregroundColor(Color("leisure"))
                                .cornerRadius(30)
                        }
                    )
            }
        }
        
        Spacer()
        
    }
}
struct OverviewCase1_Previews: PreviewProvider {
    static var previews: some View {
        OverviewCase1()
    }
}
