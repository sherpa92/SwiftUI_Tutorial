//
//  ContentView.swift
//  Landmarks
//
//  Created by Mac Pro 15 on 2023/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MapView()
                .frame(height: 300)
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
        }
        .padding()
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
