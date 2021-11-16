//
//  MessagesService.swift
//  SnnapChatApp
//
//  Created by dmdm on 16/11/2021.
//

import UIKit
import FirebaseFirestore
class MessagesService {
    static let shared = MessagesService()
    
    let messagesCollection = Firestore.firestore().collection("messages")
    
    func listenToConversation(
        userId1: String,
        userId2: String,
        completion: @escaping (([Message]) -> Void)
    ) {
        var messages = [Message]()
        
        messagesCollection
            .whereField("sender", isEqualTo: userId2)
            .whereField("receiver", isEqualTo: userId1)
            .addSnapshotListener { snapshot, error in
                if error != nil {
                    return
                }
                
                guard let docs = snapshot?.documents else {
                    return
                }
                
                for doc in docs {
                    let date = doc.data()
                    guard
                        let id = date["id"] as? String,
                        let content = date["content"] as? String,
                        let sender = date["sender"] as? String,
                        let receiver = date["receiver"] as? String,
                        let timestamp = date["timestamp"] as? Timestamp else {
                            continue
                        }
                    
                    let newMessage = Message(content: id, sender: sender, reciever: receiver, id: content, timestamp: timestamp)
                    
                    if messages.contains(where: { message in
                        message.id == newMessage.id
                    }) {
                        continue
                    }
                    
                    messages.append(newMessage)
                }
                completion(messages)
                
            }
        
        messagesCollection
            .whereField("sender", isEqualTo: userId1)
            .whereField("receiver", isEqualTo: userId2)
            .addSnapshotListener { snapshot, error in
                if error != nil {
                    return
                }
                
                guard let docs = snapshot?.documents else {
                    return
                }
                
                for doc in docs {
                    let date = doc.data()
                    guard
                        let id = date["id"] as? String,
                        let content = date["content"] as? String,
                        let sender = date["sender"] as? String,
                        let receiver = date["receiver"] as? String,
                        let timestamp = date["timestamp"] as? Timestamp else {
                            continue
                        }
                    
                    let newMessage = Message(content: id, sender: sender, reciever: receiver, id: content, timestamp: timestamp)
                    
                    if messages.contains(where: { message in
                        message.id == newMessage.id
                    }) {
                        continue
                    }
                    
                    messages.append(newMessage)
                }
                completion(messages)
            }
        
    }
    
    func sendMessage(message: Message) {
        messagesCollection.document(message.id).setData([
            "id": message.id,
            "content": message.content,
            "sender": message.sender,
            "receiver": message.reciever,
            "timestamp": message.timestamp
        ])
    }
}
