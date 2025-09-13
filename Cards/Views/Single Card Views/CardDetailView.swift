//
//  CardDetailView.swift
//  Cards
//
//  Created by Amber Hatfield on 9/9/25.
//

import SwiftUI

struct CardDetailView: View {
    @EnvironmentObject var store: CardStore
    @Binding var card: Card
    
    var body: some View {
        ZStack {
            card.backgroundColor
            ForEach($card.elements, id: \.id) { $element in
                CardElementView(element: element)
                    .resizableView(transform: $element.transform)
                    .frame(
                        width: element.transform.size.width,
                        height: element.transform.size.height
                    )
            }
        }
    }
}

#Preview {
    @Previewable @State var card = initialCards[0]
    CardDetailView(card: $card)
        .environmentObject(CardStore(defaultData: true))
}
