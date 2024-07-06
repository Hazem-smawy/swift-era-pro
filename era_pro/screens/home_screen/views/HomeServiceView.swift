//
//  HomeServiceView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

struct HomeServiceView: View {
    var color:Color
    var icon:String
    var title:String
    var body: some View {
        VStack {
            Image(systemName:icon)
                .font(.title)
                
                .foregroundColor(color)
                .padding()
                .padding(10)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(color.opacity(0.05))
                    
                }
            Text(title)
                .customTitleFont()
            
        }
        
    }
}
