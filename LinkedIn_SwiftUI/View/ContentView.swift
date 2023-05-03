//
//  ContentView.swift
//  LinkedIn_SwiftUI
//
//  Created by Gokul Murugan on 2023-05-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            NetworksView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
