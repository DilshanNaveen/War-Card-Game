//
//  ContentView.swift
//  War Card Game
//
//  Created by Dilshan Naveen on 2023-03-11.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard: String = "card2"
    @State var cpuCard: String = "card3"
    @State var payerScore: Int = 0;
    @State var cpuScore: Int = 0;
    
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(payerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
    }
    
    func deal() {
        print("deal")
        let playerCardValue: Int = Int.random(in: 2...14)
        let cpuCardValue: Int = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if (playerCardValue > cpuCardValue) {
            payerScore += 1
        } else if (cpuCardValue > playerCardValue) {
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
