//
//  HelpNSupportView.swift
//  nodetive_collab
//
//  Created by Saputra Tanuwijaya on 7/18/23.
//

import SwiftUI

struct HelpNSupportView: View {
    var body: some View {
        VStack {
            HStack {
//                Button(action: {
//                    
//                }) {
//                    Image(systemName: "arrowshape.backward")
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .foregroundColor(.black)
//                }
                
                Spacer()
                
                Text("Help & Support")
                    .fontWeight(.regular)
                
                Spacer()
                    .frame(width: 120)
            }
            Spacer()
                .frame(height: 60)
            HStack {
                Text("Support Inbox")
                    .fontWeight(.regular)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 22, height: 28)
                        .foregroundColor(.black)
                }
            }
            //Divider with rectangle
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.gray)
                .padding(.top)
            
                .padding(.bottom)
            
            HStack {
                Text("Report a problem")
                    .fontWeight(.regular)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 22, height: 28)
                        .foregroundColor(.black)
                }
            }
            // 2nd Divider
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.gray)
                .padding(.top)
            
                .padding(.bottom)
            
            HStack {
                Text("FAQ")
                    .fontWeight(.regular)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 22, height: 28)
                        .foregroundColor(.black)
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct HelpNSupportView_Previews: PreviewProvider {
    static var previews: some View {
        HelpNSupportView()
    }
}
