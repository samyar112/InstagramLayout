//
//  StoryItems.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import Foundation

struct StoryItems: Identifiable {
    let id : Int
    let name: String
    let photo: String
}

let storyItems = [
    StoryItems(id: 1, name: "Samir", photo: String(photoItems.samir)),
    StoryItems(id: 2, name: "Sagar", photo: String(photoItems.sagar)),
    StoryItems(id: 3, name: "Ashok", photo: String(photoItems.ashok)),
    StoryItems(id: 4, name: "Bijay", photo: String(photoItems.bijay)),
    StoryItems(id: 5, name: "Ashutosh", photo: String(photoItems.ashutosh)),
    StoryItems(id: 6, name: "Sujan", photo: String(photoItems.sujan)),
    StoryItems(id: 7, name: "Yaman", photo: String(photoItems.yaman)),
    StoryItems(id: 8, name: "Rohit", photo: String(photoItems.rohit))
]
