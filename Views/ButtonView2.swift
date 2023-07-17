//
//  ButtonView2.swift
//  nodetive_collab
//
//  Created by Shyra Alexandria on 7/17/23.
//

import SwiftUI

struct ButtonView2: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        ZStack {
            Text(text)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(isSelected ? color: Color.white)
                    .frame(width: 130, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                )
        }
    }
}

struct ButtonView2_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView2(isSelected: .constant(false), color: .purple, text: "Option")
    }
}
