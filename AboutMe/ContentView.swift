//
//  ContentView.swift
//  AboutMe
//
//  Created by Sienna Tanner on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showText = false // make this @State so showText can be changed (otherwise it would be immutable)
    
    var body: some View {
        VStack {
            Image("IMG_8497") // added this image to assests first and this is the name
                .resizable() // important to make the image fit the proper dimensions
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 300, height: 400)
                      .border(.pink)
                      .padding(10) // to create distance from image and the "My name is" text
                      
            Text("My name is")
            Text("Sienna!")
                .bold()
            
            
            
        }
        VStack {
            
            Button("Click for why I picked this image") {
                showText.toggle()
                // the way I set this up, clicking on the button again will make the text disappear - there are ways around this though
            }
            .padding(10)
            .tint(.purple)
               
            
            if showText { // if showText is true, the button must have been clicked, so this if statement is entered and the text inside will be revealed
                Text("I chose these flowers to represent me because I have been enjoying making custom bouquets for myself and friends lately (and lilies are my favorite!)")
                    .multilineTextAlignment(.center) // to make the text centered and match the (default is left alignment)
                    .italic()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
