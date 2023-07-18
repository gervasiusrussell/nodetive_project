//
//  Notification Asset.swift
//  nodetive_collab
//
//  Created by Saputra Tanuwijaya on 7/17/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            ZStack {
                Rectangle()
                    .frame(width: 350, height: 150)
                    .foregroundColor(.gray)
                    .cornerRadius(20)
                    .overlay(
                        VStack {
                            HStack {
                                Image("logo")
                                    .resizable()                .frame(width: 60, height: 60)
                                
                                Text("Nodetive")
                                    .font(.system(size: 20, weight: .bold))
                                
                            }
                            
                            HStack {
                                Text("Notification Message")
                                
                            }
                        }
                            .padding(.trailing, 100)
                            .padding(.bottom, 50)
                        
                        
                    )
                    }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
