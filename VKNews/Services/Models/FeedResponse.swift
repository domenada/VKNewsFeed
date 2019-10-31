//
//  FeedResponse.swift
//  VKNews
//
//  Created by Dmitry Andreyanov on 10/28/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import Foundation

struct FeedResponseWrapped: Decodable {
    let response: FeedResponse
}

struct FeedResponse: Decodable {
    var items: [FeedItem]
    var profiles: [Profile]
//    var groups: [Group]
}

struct FeedItem: Decodable {
    let sourceId: Int
    let postId: Int
    let text: String?
    let date: Double
    let comments: CountableItem?
    let likes: CountableItem?
    let reposts: CountableItem?
    let views: CountableItem?
}

struct CountableItem: Decodable {
    let count: Int
}
struct Profile: Decodable {
    let id: Int
    let firstName: String
    let lastName: String
    let photo100: String
}
//struct nameGroup: Decodable {
//    <#fields#>
//}
