//
//  TitleRow.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/24/24.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1553514029-1318c9127859?q=80&w=3328&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var name = "Paige Robinson"
    
    var body: some View {
        HStack(spacing: 20, content: {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, content: {
                Text(name).font(.title).bold()
                Text("Online").font(.caption).foregroundStyle(.myGray)
            })
            Spacer()
            Image(systemName: "phone.fill")
                .foregroundStyle(.gray).padding(10)
                .background(.white).cornerRadius(50)
        })
        .padding()
    }
}

#Preview {
    TitleRow().background(Color("MyBlue"))
}
