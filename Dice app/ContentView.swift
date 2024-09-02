//
//  ContentView.swift
//  Dice app
//
//  Created by Gözde Aydin on 2.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State var leftDice = 1
    @State var rightDice = 1

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/ .fill/*@END_MENU_TOKEN@*/)

            VStack(content: {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDice)
                    DiceView(number: rightDice)

                }.frame(width: 350)
                Spacer()
                Button(action: oooy) {
                    Text("oy")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                }.background(.red)
                    .clipShape(.buttonBorder)
            })
        }
    }

    func oooy() {
        leftDice = Int.random(in: 1 ... 6)
        rightDice = Int.random(in: 1 ... 6)
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)").resizable()
            .aspectRatio(1, contentMode: .fit).padding()
    }
}
