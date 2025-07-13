//
//  InfoView.swift
//  BusCard
//
//  Created by Nikhil Polepalli on 7/12/25.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).fill(Color.white).frame(height: 50).overlay(HStack{
            Image(systemName: imageName).foregroundColor(.green)
            Text(text)}).padding(.all)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "hello", imageName: "phone.fill")
}
