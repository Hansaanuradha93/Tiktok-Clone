//
//  UserStatsView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-19.
//

import SwiftUI

struct UserStatsView: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatsView(title: "Followers", value: 5)
}
