//
//  ContentView.swift
//  AppStoreClone
//
//  Created by 이윤오 on 2022/11/10.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .today
    
    enum Tab {
        case today
        case games
        case apps
        case arcade
        case search
    }
    
    var body: some View {
        TabView(selection: $selection) {
            TodayView()
                .tabItem {
                    Label("Today", image: "tabbar_today")
                }
                .tag(Tab.today)
            
            GamesView()
                .tabItem {
                    Label("Games", image: "tabbar_games")
                }
                .tag(Tab.games)
            AppsView()
                .tabItem {
                    Label("Apps", image: "tabbar_apps")
                }
                .tag(Tab.apps)
            ArcadeView()
                .tabItem {
                    Label("Arcade", image: "tabbar_arcade")
                }
                .tag(Tab.arcade)
            SearchView()
                .tabItem {
                    Label("Search", image: "tabbar_search")
                }
                .tag(Tab.search)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
