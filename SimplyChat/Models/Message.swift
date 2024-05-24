//
//  Message.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/24/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var recieved: Bool
    var timestamp: Date
}
