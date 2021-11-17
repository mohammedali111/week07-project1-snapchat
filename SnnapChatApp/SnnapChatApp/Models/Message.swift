//
//  Message.swift
//  SnnapChatApp
//
//  Created by dmdm on 15/11/2021.
//

import Foundation
import Firebase

struct Message {
    let id: String
    let senderId: String
    let senderName: String
    let content: String
    let timestamp: Timestamp
    let conversationsId : String
}
