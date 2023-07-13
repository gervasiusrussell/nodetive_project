//
//  SelectButtonAsset.swift
//  NodetiveAddSchedule
//
//  Created by Winsen Tjen on 13/07/23.
//

import SwiftUI

struct ButtonView: View {
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
                    .foregroundColor(isSelected ? color: Color("Color"))
                    .frame(width: 130, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                )
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(isSelected: .constant(false), color: .purple, text: "Option")
    }
}

