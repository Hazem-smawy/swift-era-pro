//
//  ErrorView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

struct ErrorView:View {
    let message:String
    
    var body: some View {
        HStack(spacing:10) {
            Image(systemName: "exclamationmark.triangle")
            
            Text(message)
                .customFont(size: 13)
            
        }
        
        .foregroundColor(.red)
        .padding(.horizontal)
        .frame(maxWidth: .infinity,alignment: .leading)
        .frame(height: 40)
        
        .background(RoundedRectangle(cornerRadius: 10).fill(.red.opacity(0.1)))
        .transition(.slide)
    }
}
