//
//  ContentView.swift
//  BusCard
//
//  Created by Nikhil Polepalli on 7/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("NikhilP").resizable().aspectRatio(contentMode: .fit).frame(width: 200.0, height: 300.0).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Nikhil Polepalli").font(.system(size: 40)).bold().foregroundColor(.white)
                Text("iOS Developer").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "502-424-7440", imageName: "phone.fill")
                InfoView(text: "nikhil.s.polepalli@gmail.com", imageName: "envelope.fill")

            }
        }
    }
}

#Preview {
    ContentView()
}

