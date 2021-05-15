//
//  TrekrApp.swift
//  Trekr
//
//  Created by Mohammad Faizan on 2021-05-15.
//

import SwiftUI

@main
struct TrekrApp: App {
    var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }

                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
            }
            .environmentObject(locations)
        }
    }
}
