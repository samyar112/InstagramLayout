//
//  PostItems.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import Foundation

struct PostItem: Identifiable {
    let id = UUID().uuidString
    let icon: String
    let name: String
    let city: String
    let post: String
}

let postItems = [
    PostItem(icon: String(photoItems.samir), name: "Samir", city: "Samakhushi - KTM", post: String(post.post5)),
    PostItem(icon: String(photoItems.sagar), name: "Sagar", city: "Banasthali - KTM", post: String(post.post1)),
    PostItem(icon: String(photoItems.ashok), name: "Ashok", city: "Balaju Height - KTM", post: String(post.post7)),
    PostItem(icon: String(photoItems.bijay), name: "Bijay", city: "Tahachal - KTM", post: String(post.post4)),
    PostItem(icon: String(photoItems.ashutosh), name: "Ashok", city: "Lazimpat - KTM", post: String(post.post3)),
    PostItem(icon: String(photoItems.sujan), name: "Sujan", city: "Banasthali - KTM", post: String(post.post6)),
    PostItem(icon: String(photoItems.yaman), name: "Yaman", city: "Kalimati - KTM", post: String(post.post2)),
    PostItem(icon: String(photoItems.rohit), name: "Rohit", city: "Basantapur - KTM", post: String(post.post8))
]
