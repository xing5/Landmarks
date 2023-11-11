//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Xing Wu on 11/11/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
