//
//  User.swift
//  InstagramTut
//
//  Created by Owen Warner on 6/26/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currenUid = Auth.auth().currentUser?.uid else { return false }
        return currenUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "warrior", profileImageUrl: nil, fullname: "Tom Nook", bio: "The biggest nook", email: "nook@gmail.com"),
        .init(id: NSUUID().uuidString, username: "7mile", profileImageUrl: nil, fullname: "Veeze", bio: "The biggest nook", email: "worst@gmail.com"),
        .init(id: NSUUID().uuidString, username: "paperwork", profileImageUrl: nil, fullname: "Babyface Ray", bio: "The biggest nook", email: "party@gmail.com"),
        .init(id: NSUUID().uuidString, username: "flint", profileImageUrl: nil, fullname: "Rio da young og", bio: "The biggest nook", email: "dumber@gmail.com"),

    ]
}
