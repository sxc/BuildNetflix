//
//  ContentView.swift
//  BuildNetflix
//
//  Created by Xiaochun Shen on 2020/10/6.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        

        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("1")
                }.tag(1)
            
            Text("Coming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("2")
                }.tag(2)
            
            Text("Downloads")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("3")
                }.tag(3)
            
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("4")
                }.tag(4)
            
            
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
