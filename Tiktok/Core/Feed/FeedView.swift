//
//  FeedView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-18.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(0..<20) { post in
                    Rectangle()
                        .fill(Color.blue)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
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
