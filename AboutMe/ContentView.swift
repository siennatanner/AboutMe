//
//  ContentView.swift
//  AboutMe
//
//  Created by Sienna Tanner on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("IMG_8497")
                .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 300, height: 400, alignment: .topLeading)
                      .border(.pink)
            Text("My name is")
            Text("Sienna!")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
