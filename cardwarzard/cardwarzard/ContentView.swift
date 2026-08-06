//
//  ContentView.swift
//  cardwarzard
//
//  Created by zly on 2026/8/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")

            VStack(spacing: 50) {
                Image("logo")

                HStack(spacing: 50) {
                    Image("card3")
                    Image("card3")
                }

                Image("button")

                HStack(spacing: 50) {
                    VStack {
                        Text("Player")
                        Text("0").font(.largeTitle)
                    }

                    VStack {
                        Text("Player")
                        Text("0").font(.largeTitle)
                    }
                }.foregroundStyle(.white)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
