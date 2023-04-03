//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mac Pro 15 on 2023/04/03.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
