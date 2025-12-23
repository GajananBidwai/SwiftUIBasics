//
//  EditMode.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import SwiftUI

struct EditMode: View {
    @State private var fruits = ["Apple", "Banana", "Orange", "Mango"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle("Fruits")
            .toolbar {
                EditButton()
            }
        }
    }

    private func delete(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }

    private func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}


#Preview {
    EditMode()
}
