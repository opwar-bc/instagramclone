//
//  Post.swift
//  InstagramTut
//
//  Created by Owen Warner on 7/1/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post{
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption",
            likes: 203,
            imageUrl: "sword",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "dont listen to ost",
            likes: 567,
            imageUrl: "gun",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "no drones please",
            likes: 693,
            imageUrl: "couch",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "vini jr",
            likes: 12,
            imageUrl: "knife",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "siuuuuu",
            likes: 11,
            imageUrl: "sword",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
    ]
}
