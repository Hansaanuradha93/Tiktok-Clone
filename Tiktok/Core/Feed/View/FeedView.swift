//
//  FeedView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-18.
//

import AVKit
import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear { playInitialVideoIfNeccessary() }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear { player.play() }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .scrollIndicators(.never)
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNeccessary() {
        guard scrollPosition == nil,
              let post = viewModel.posts.first,
              player.currentItem == nil else { return }
        let item = AVPlayerItem(url: post.url)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: currentPost.url)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
