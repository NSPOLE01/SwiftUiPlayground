//
//  ContentView.swift
//  Dicee
//
//  Created by Nikhil Polepalli on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                }){
                    Text("Roll").font(.system(size: 50)).fontWeight(.bold).foregroundColor(.white).padding(.horizontal)
                }.background(Color.red).frame(height: 75)
            }
        }

    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding()
    }
}
