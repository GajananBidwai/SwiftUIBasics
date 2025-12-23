//
//  SwipeActionDemo.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import SwiftUI

struct SwipeActionDemo: View {
    @State private var emails = ["Welcome", "Meeting Update", "Invoice"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(emails, id: \.self) { email in
                    Text(email)
                        .swipeActions {
                            Button(role: .destructive) {
                                delete(email)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
            .navigationTitle("Inbox")
        }
    }

    private func delete(_ email: String) {
        emails.removeAll { $0 == email }
    }
}


#Preview {
    SwipeActionDemo()
}
