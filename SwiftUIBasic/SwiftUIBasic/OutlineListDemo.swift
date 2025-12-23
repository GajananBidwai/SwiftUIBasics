//
//  OutlineListDemo.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import SwiftUI

struct OutlineListDemo: View {
    let files: [FileItem] = [
        FileItem(name: "Documents", children: [
            FileItem(name: "Resume.pdf"),
            FileItem(name: "Notes.txt")
        ]),
        FileItem(name: "Pictures", children: [
            FileItem(name: "Vacation", children: [
                FileItem(name: "photo1.jpg"),
                FileItem(name: "photo2.jpg")
            ])
        ])
    ]

    var body: some View {
        NavigationStack {
            List(files, children: \.children) { item in
                Label(item.name, systemImage: item.children == nil ? "doc" : "folder")
            }
            .navigationTitle("Files")
        }
    }
}


#Preview {
    OutlineListDemo()
}
