//
//  TabHomeView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI

struct TabHomeView: View {
    
    @ObservedObject var screenerStatus: ScreenerStatus
    
  
    
    @State private var selectedTab = 0
    
    let minDragTranslationForSwipe: CGFloat = 50
    
    let numTabs = 4
   
    
    private func handleSwipe(translation: CGFloat) {
        if translation > minDragTranslationForSwipe && selectedTab > 0 {
            selectedTab -= 1
        } else  if translation < -minDragTranslationForSwipe && selectedTab < numTabs-1 {
            selectedTab += 1
        }
    }
    
    var body: some View {
        NavigationView {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            GraphView(data: [])
                .tabItem {
                    Image(systemName: "chart.pie.fill")
                    Text("Graph")
                }

            CDCHomeView(screenerStatus: screenerStatus)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Screener")
                }

            NewsDataView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                }

            
        }
     
        .accentColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.8470588235)))
        .onAppear() {
            UITabBar.appearance().barTintColor = #colorLiteral(red: 0.1734037995, green: 0.1684899032, blue: 0.4230538905, alpha: 1)
            
        }
    }
}
}

struct TabHomeView_Previews: PreviewProvider {
    static var previews: some View {

        Group {
            TabHomeView(screenerStatus: ScreenerStatus.init())
            TabHomeView(screenerStatus: ScreenerStatus.init())
        }
        
    }
}
