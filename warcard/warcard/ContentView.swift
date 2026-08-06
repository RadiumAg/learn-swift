//
//  ContentView.swift
//  warcard
//
//  Created by zly on 2026/8/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            VStack(alignment: .leading, ) {
                Image("test").resizable().scaledToFit().clipShape(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                )

                HStack {
                    Text("Niagara Falls").font(.title).bold()
                    Spacer()
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }

                        Text("(Reviews 361")
                    }.foregroundStyle(.orange).font(.caption)

                }

                Text("Come visit for an experience of lifeTime")

            }
            .padding(20).background(.white).clipShape(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
            ).shadow(radius: 16)
            Spacer()
        }.padding(10).background(.blue)
    }
}

#Preview {
    ContentView()
}
