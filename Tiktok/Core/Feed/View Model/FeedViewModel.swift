//
//  FeedViewModel.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-27.
//

import Foundation

final class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            Post(id: UUID().uuidString, videoUrl: videoUrls[0]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[1]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[2]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[3]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[4]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[5]),
        ]
    }
}
