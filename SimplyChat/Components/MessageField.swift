//
//  MessageField.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/24/24.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter your Message here"), text: $message)
            
            Button {
                print("Message Sent!")
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(.white).padding(10)
                    .background(Color("MyBlue"))
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("MyGray"))
        .cornerRadius(20)
    }
}

#Preview {
    MessageField()
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = { _ in }
    var commit: () -> () = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
