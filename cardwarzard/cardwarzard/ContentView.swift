//
//  ContentView.swift
//  cardwarzard
//
//  Created by zly on 2026/8/8.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = 1
    @State var cpuCard = 1
    @State var playerScore = 0
    @State var cpuScore = 0

    var body: some View {

        ZStack {
            Image("background-plain")

            VStack(spacing: 50) {
                Image("logo")

                HStack(spacing: 50) {
                    Image("card\(playerCard)")
                    Image("card\(cpuCard)")
                }

                Button {
                    dealCards()
                    print(1111)
                } label: {
                    Image("button")
                }

                HStack(spacing: 50) {
                    VStack {
                        Text("Player")
                        Text(String(playerScore)).font(.largeTitle)
                    }

                    VStack {
                        Text("Player")
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                }.foregroundStyle(.white)
            }
            .padding()
        }
    }

    func dealCards() {
        let playerVRadiumalue = Int.random(in: 2...14)

        playerCard = playerVRadiumalue

        let cpuRadiumValue = Int.random(in: 2...14)

        cpuCard = cpuRadiumValue

        if cpuRadiumValue < playerVRadiumalue {
            cpuScore += 1
        } else if cpuRadiumValue > playerVRadiumalue {
            playerScore += 1
        }
    }

}

#Preview {
    ContentView()
}
