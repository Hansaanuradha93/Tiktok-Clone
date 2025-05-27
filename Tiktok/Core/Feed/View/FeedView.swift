//
//  FeedView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-18.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post)
                }
            }
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .scrollIndicators(.never)
    }
}

#Preview {
    FeedView()
}
