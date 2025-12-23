//
//  ManualEditMode.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import SwiftUI

struct ManualEditModeDemo: View {
    @State private var editMode: EditMode = .inactive
    @State private var items = ["One", "Two", "Three"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
                .onDelete { items.remove(atOffsets: $0) }
                .onMove { items.move(fromOffsets: $0, toOffset: $1) }
            }
            .environment(\.editMode, $editMode)
            .navigationTitle("Manual Edit")
            .toolbar {
                Button(editMode.isEditing ? "Done" : "Edit") {
                    editMode = editMode.isEditing ? .inactive : .active
                }
            }
        }
    }
}


#Preview {
    ManualEditModeDemo()
}
