//
//  ExploreCell.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-19.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            VStack(alignment: .leading) {
                Text("john.doe")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("John Doe")
                    .font(.footnote)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
