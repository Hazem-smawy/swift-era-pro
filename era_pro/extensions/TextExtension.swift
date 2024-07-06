//
//  extentions.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

extension View {
    func customFont(size:CGFloat, bold:Bool = false) -> some View {
        self
            .modifier(TextModifier(size: size,bold: bold))
    }
    func customTitleFont( bold:Bool = false) -> some View {
        self
            .modifier(CustomTitleModifier(bold: bold))
    }
    func customSubTitleFont( bold:Bool = false) -> some View {
        self
            .modifier(CustomSubTitleModifier(bold: bold))
    }
    func customBodyFont( bold:Bool = false) -> some View {
        self
            .modifier(CustomBodyModifier(bold: bold))
    }

}
