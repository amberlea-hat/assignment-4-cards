//
//  SingleCardView.swift
//  Cards
//
//  Created by Amber Hatfield on 9/8/25.
//

import SwiftUI

struct SingleCardView: View {
    @State private var currentModal: ToolbarSelection?
    @Binding var card: Card
    
    var body: some View {
        NavigationStack {
            content
                .modifier(CardToolbar(currentModal: $currentModal))
        }
    }

    var content: some View {
        card.backgroundColor
    }
}

#Preview {
    SingleCardView(card: .constant(initialCards[0]))
}
