//
//  CustomBtns.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI



struct CustomSittingBtn:View {
    let color:Color
    let label:String
    let action:() -> Void
    var body: some View {
        Button {
            action()
            
            
        } label: {
            Text(label)
                .customFont(size: 14,bold: true)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.vertical,10)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(color)
                )
            
        }
    }
}



struct CustomBtn:View {
    let color:Color
    let label:String
    let action:() -> Void
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                
                Text(label)
                    .customFont(size: 16,bold: true)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(10)
                
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(color)
                    )
                
            }
        }
        
    }
}
