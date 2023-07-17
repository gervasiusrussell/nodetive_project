//
//  ContentView3.swift
//  nodetive_collab
//
//  Created by Winsen Tjen on 17/07/23.
//

import SwiftUI

struct ContentView3: View {
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
            
            OverviewAfterQuizView()
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

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
