//
//  SingleCardView.swift
//  Cards
//
//  Created by Amber Hatfield on 9/8/25.
//

import SwiftUI

struct SingleCardView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentModal: ToolbarSelection?
    
    var body: some View {
        NavigationStack {
            Color.yellow
                .sheet(item: $currentModal) { item in
                    switch item {
                    default:
                        Text(String(describing: item))
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Done") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        BottomToolbar(modal: $currentModal)
                    }
                }
        }
    }
}

#Preview {
    SingleCardView()
}
