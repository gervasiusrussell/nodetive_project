//
//  OverviewNoQuizView.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 15/07/23.
//

import SwiftUI

struct OverviewNoQuizView: View {
    @State var quiz: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text(quiz)
                
                Text("You haven’t unlocked this feature yet. Please answer our survey so we can understand you better and give a recommendation.")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                }) {
                    NavigationLink { QuestionView() } label: {
                        Text("Go to Quiz")
                            .toolbar(.hidden, for: .tabBar)
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
                    .toolbar(.hidden, for: .tabBar)
                }
            }
        }
    }
}

struct OverviewNoQuiz_Previews: PreviewProvider {
    static var previews: some View {
        OverviewNoQuizView()
    }
}
