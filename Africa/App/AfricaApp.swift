//
//  AfricaApp.swift
//  Africa
//
//  Created by eduardo vinoles on 4/1/24.
//

import SwiftUI

@main
struct AfricaApp: App {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.gray.opacity(0.1)).withAlphaComponent(0.1)
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
