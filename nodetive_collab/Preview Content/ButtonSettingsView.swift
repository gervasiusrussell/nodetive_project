//
//  ButtonSettingsView.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 18/07/23.
//

import SwiftUI

struct DottedSelectButton: View {
    @Binding var isDottedSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 130, height: 33)
                .foregroundColor(isDottedSelected ? color: .accentColor)
        }
    }
}

struct DottedSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        DottedSelectButton(isDottedSelected: .constant(false), color: Color("SelectedColor"), text: "Option")
    }
}

