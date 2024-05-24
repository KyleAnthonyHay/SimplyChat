//
//  ContentView.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/23/24.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hey! whats up?", "Nothing much.. you?", "I'm here, jsut coding some swiftUI Applications"]
    var body: some View {
        VStack {
            VStack {
                    TitleRow()
                    ScrollView {
                        ForEach(messageArray, id: \.self) {
                            text in MessageBubble(message: Message(id: "12345", text: text, recieved: true, timestamp: Date()))
                        }
                    }
                    .padding(.top, 20)
                    .background(.white)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                    
                }
            .background(Color("MyBlue"))
            MessageField().padding(.horizontal, 20)
        }
        }
}

#Preview {
    ContentView()
}
