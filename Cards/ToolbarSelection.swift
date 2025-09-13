//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Amber Hatfield on 9/8/25.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
    var id: Int {
        hashValue
    }
    
    case photoModal, frameModal, stickerModal, textModal
}
