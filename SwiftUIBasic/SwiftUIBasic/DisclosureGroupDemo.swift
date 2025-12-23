//
//  DisclosureGroupDemo.swift
//  SwiftUIBasic
//
//  Created by Neosoft on 23/12/25.
//

import SwiftUI

struct DisclosureGroupDemo: View {
    @State private var isExpand = false
    
    var body: some View {
        List {
            DisclosureGroup("More Info") {
                Text("This is hidden content")
                Text("It appears when expanded")
            }
            DisclosureGroup("Information", isExpanded: $isExpand) {
                Text("This is hidden content")
                Text("It appears when expanded")
            }
        }
        .navigationTitle("DisclosureGroup")
    }
}


#Preview {
    DisclosureGroupDemo()
}
