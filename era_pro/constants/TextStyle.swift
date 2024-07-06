//
//  TextStyle.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

struct TextModifier:ViewModifier {
    var size:CGFloat
    var bold:Bool
    func body(content: Content) -> some View {
        content
            .font(.custom(bold ? FontManager.Cairo.bold: FontManager.Cairo.regular, size: size))
            
        
    }
}
struct CustomTitleModifier:ViewModifier {
    var bold:Bool
    func body(content: Content) -> some View {
        content
            .font(.custom(bold ? FontManager.Cairo.bold: FontManager.Cairo.regular, size: 14))
            .foregroundColor(MyColor.textPrimary)
        
    }
}
struct CustomSubTitleModifier:ViewModifier {
    var bold:Bool
    func body(content: Content) -> some View {
        content
            .font(.custom(bold ? FontManager.Cairo.bold: FontManager.Cairo.regular, size: 12))
            .foregroundColor(MyColor.textSecondary)
        
    }
}
struct CustomBodyModifier:ViewModifier {
    var bold:Bool
    func body(content: Content) -> some View {
        content
            .font(.custom(bold ? FontManager.Cairo.bold: FontManager.Cairo.regular, size: 10))
            .foregroundColor(MyColor.textSecondary)
        
    }
}


