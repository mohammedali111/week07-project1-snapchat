//
//  User.swift
//  SnappchatApp
//
//  Created by dmdm on 14/11/2021.
//

import UIKit
class User: NSObject {
    
    var id: String?
    var name: String?
    var email: String?
    var status:String?
    
    var profileImageUrl: String?
    init(dictionary: [String: AnyObject]) {
        self.id = dictionary["id"] as? String
        self.name = dictionary["name"] as? String
        self.email = dictionary["email"] as? String
        self.profileImageUrl = dictionary["profileImageUrl"] as? String
    }
}
