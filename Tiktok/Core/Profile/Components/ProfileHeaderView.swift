//
//  ProfileHeaderView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-19.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                /// Profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                /// Username
                Text("@lewis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            /// Stats view
            HStack(spacing: 16) {
                /// Following count
                UserStatsView(title: "Following", value: 5)
                
                /// Followers count
                UserStatsView(title: "Followers", value: 7)

                /// Likes count
                UserStatsView(title: "Likes", value: 12)
            }
            
            /// Action button
            Button {
                print("Edit profile")
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }

            /// Dividor
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}
