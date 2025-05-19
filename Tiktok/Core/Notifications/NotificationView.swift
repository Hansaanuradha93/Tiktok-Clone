//
//  NotificationView.swift
//  Tiktok
//
//  Created by Hansa Wickramanayake on 2025-05-19.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<10) { notification in
                        NotificationCell()
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationView()
}
