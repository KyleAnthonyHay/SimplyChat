//
//  MessageBubble.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/24/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showtime = false
    
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing, content: {
            HStack {
                Text(message.text).padding()
                    .background(message.recieved ? Color(.myGray) : Color("MyBlue"))
                    .cornerRadius(16)
            }.frame(maxWidth: 300, alignment: message.recieved ? .leading : .trailing) // text alignment
            
            if showtime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                    .padding(message.recieved ? .leading : .trailing)
                    .transition(.opacity)
                    
            }
        }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: message.recieved ? .leading : .trailing) // bubble alignment
            .padding(message.recieved ? .leading : .trailing)
            .padding(.horizontal, 10)
            .onTapGesture {
                withAnimation {
                    showtime.toggle()
                }
            }
        
        
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "Hello, Nice to meet you.", recieved: false, timestamp: Date()))
}
