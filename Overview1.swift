//
//  Overview1.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 15/07/23.
//

import SwiftUI

struct OView: View {
    @State var quiz: String = ""
    
    var body: some View {
        VStack {
            Text(quiz)
            
            Text("You haven’t unlocked this feature yet. Please answer our survey so we can understand you better and give a recommendation.")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
            
            Button(action: {
                self.quiz = "Button pressed"
            }) {
                Text("Go to Quiz")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.accentColor)
                            .shadow(radius: 10)
                    )
            }
        }
    }
}

struct OView_Previews: PreviewProvider {
    static var previews: some View {
        OView()
    }
}
