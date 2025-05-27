//
//  FeedCell.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-18.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.pink)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack {
                Spacer()
            
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for take off!!")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                        /// Profile view
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                        
                        /// Like button
                        Button {
                            print("like")
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                
                                Text("1")
                                    .font(.caption)
                                    .fontWeight(.bold)
                            }
                            .foregroundStyle(.white)
                        }
                        
                        /// Comment button
                        Button {
                            print("Comment")
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("1")
                                    .font(.caption)
                            }
                            .foregroundStyle(.white)
                        }
                        
                        /// Save button
                        Button {
                            print("Save")
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(.white)
                        }
                        
                        /// Share button
                        Button {
                            print("Share")
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: "1", videoUrl: ""))
}
