//
//  NavigationLazyStack.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 12/9/20.
//

import Foundation

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @ escaping () -> Content) {
        self.build = build
        
    }
    var body: Content {
        build()
    }
}
