//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohamed Naiz on 10-1-25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var messageNumber = 0
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 120)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Fantastic",
                                "You Make Me Smile!",
                                "When the Genius Bar Needs Help, They Call You!!"]
                
                message = messages[Int.random(in: 0..<messages.count)]
                
                imageName = "image\(Int.random(in: 0...9))"

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)

        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
