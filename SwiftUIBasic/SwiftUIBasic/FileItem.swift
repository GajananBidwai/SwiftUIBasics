//
//  FileItem.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import Foundation
struct FileItem: Identifiable {
    let id = UUID()
    let name: String
    var children: [FileItem]? = nil
}
