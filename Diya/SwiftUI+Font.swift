//
//  SwiftUI+Font.swift
//  Diya
//
//  Created by Gleb Renkas on 07/05/2025.
//

import SwiftUI

extension Font {
    static func eUkraine(fontStyle: Font.TextStyle = .body, FontWeight: Weight = .regular) -> Font{
        return Font.custom("e-Ukraine-Thin", size: fontStyle.size)
    }
}

extension Font.TextStyle{
    var size: CGFloat{
        switch self{
        case .body: return 24
        case .largeTitle:
            return 24
        case .title:
            return 24
        case .title2:
            return 24
        case .title3:
            return 24
        case .headline:
            return 24
        case .subheadline:
            return 24
        case .callout:
            return 24
        case .footnote:
            return 24
        case .caption:
            return 24
        case .caption2:
            return 24
        @unknown default:
            return 24
        }
    }
}
