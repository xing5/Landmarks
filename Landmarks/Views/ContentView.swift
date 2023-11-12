//
//  ContentView.swift
//  Landmarks
//
//  Created by Xing Wu on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
