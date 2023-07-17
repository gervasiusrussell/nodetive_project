//
//  ContentView.swift
//  nodetive_collab
//
//  Created by Gervasius Russell on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
