//
//  Transform.swift
//  Cards
//
//  Created by Amber Hatfield on 9/8/25.
//

import SwiftUI

struct Transform {
    var size = CGSize(
        width: Settings.defaultElementSize.width,
        height: Settings.defaultElementSize.height
    )
    var rotation: Angle = .zero
    var offset: CGSize = .zero
}
