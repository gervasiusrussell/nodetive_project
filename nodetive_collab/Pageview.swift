//
//  PageView.swift
//  Nodetive
//
//  Created by Jennifer Marcellyn Cen on 10/07/23.
//

import SwiftUI

struct PageView: View {
    var page: Page
    var body: some View {
        VStack(spacing: 20) {
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .frame(width: 300)
            
            Text(page.name)
                .font(.title)
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
