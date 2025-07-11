//
//  ContentView.swift
//  Playground
//
//  Created by Nikhil Polepalli on 7/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("I Am Rich").font(.system(size: 40)).fontWeight(.bold).foregroundColor(Color.white)
                Image("diamond").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center)
            }
            
        }

    }
}

#Preview {
    ContentView()
}
