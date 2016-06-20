//
//  Message.swift
//  HaptChat
//
//  Created by shashi kumar on 18/06/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

import Foundation
import ObjectMapper

//body: "hello",
//username: "john-t",
//Name: "John",
//image-url: "http://haptikdev.s3.amazonaws.com/content/06138bc5af6023646ede0e1f7c1eac75d64dd2f45a516f8746413832a94f75f3.jpeg",
//message-time: "2016-01-01T05:30:34"

class Message: Mappable {
    var body: String?
    var name: String?
    var imageURL: String?
    var username: String?
    var messageTime: String?
    var isFavourite: Bool?
    
    required init?(_ map: Map) { }
    
    func mapping(map: Map) {
        body        <- map["body"]
        name        <- map["Name"]
        imageURL    <- map["image-url"]
        username    <- map["username"]
        messageTime <- map["message-time"]
    }
}
