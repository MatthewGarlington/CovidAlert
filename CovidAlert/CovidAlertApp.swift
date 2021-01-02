//
//  CovidAlertApp.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import SwiftUI

@main
struct CovidAlertApp: App {
    var body: some Scene {
        WindowGroup {
            TabHomeView(screenerStatus: ScreenerStatus.init())
        }
    }
}
