//
//  ContentView.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .ignoresSafeArea()
                    .frame(width: 300, height: 80)
//                    .padding(.top, 700)
                TabView {
                    HomeView()
                        .tabItem() {
                            Image(systemName: "house")
                            Text("Home")
                        }
                    CalendarView()
                        .tabItem() {
                            Image(systemName: "calendar")
                            Text("Calendar")
                        }
                    OverviewView()
                        .tabItem() {
                            Image(systemName: "book")
                            Text("Overview")
                        }
                    ProfileView()
                        .tabItem() {
                            Image(systemName: "person.circle")
                            Text("Profile")
                        }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
