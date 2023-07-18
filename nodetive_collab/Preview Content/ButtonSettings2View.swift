//
//  ButtonSettings2View.swift
//  nodetive_collab
//
//  Created by Samuel Matthew Masman on 18/07/23.
//

import SwiftUI

struct Dotted2SelectButton: View {
    @Binding var is2DottedSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 130, height: 33)
                .foregroundColor(is2DottedSelected ? color: .accentColor)
        }
    }
}

struct Dotted2SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        Dotted2SelectButton(is2DottedSelected: .constant(false), color: Color("SelectedColor"), text: "Option")
    }
}
