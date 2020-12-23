//
//  TabHomeView.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/22/20.
//

import SwiftUI

struct TabHomeView: View {
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
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
                .highPriorityGesture(DragGesture().onEnded({ self.handleSwipe(translation: $0.translation.width)}))
            GraphView(data: [])
                .tabItem {
                    Image(systemName: "chart.pie.fill")
                    Text("Graph")
                }.tag(1)
                .highPriorityGesture(DragGesture().onEnded({ self.handleSwipe(translation: $0.translation.width)}))
            SymptomCheckDetailView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Screener")
                }.tag(2)
                .highPriorityGesture(DragGesture().onEnded({ self.handleSwipe(translation: $0.translation.width)}))
            NewsDataView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                }.tag(3)
                .highPriorityGesture(DragGesture().onEnded({ self.handleSwipe(translation: $0.translation.width)}))
            
        }
        .accentColor(.red)
    
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
    }
}

struct TabHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}
