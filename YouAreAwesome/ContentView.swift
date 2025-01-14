//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohamed Naiz on 10-1-25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                 
//                if message == message1 {
//                    message = message2
//                    imageName = imageString2
//                } else {
//                    message = message1
//                    imageName = imageString1
//                }
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == imageString1 ? imageString2 : imageString1)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
