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
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
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
