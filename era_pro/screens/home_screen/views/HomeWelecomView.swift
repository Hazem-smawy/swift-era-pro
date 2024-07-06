//
//  HomeWelecomView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

struct HomeWelecomView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bell")
                    .font(.headline)
                    .padding(10)
                    .cornerRadius(10)
                    .padding(.horizontal,10)
                    .background {
                        Capsule()
                            .stroke()
                            .foregroundColor(.secondary.opacity(0.5))
                    }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("مرحبا")
                        .customSubTitleFont()
                    Text("حازم السماوي")
                        .customSubTitleFont(bold: true)
                }
                Spacer()
                    .frame(maxWidth: 10)
                Image("avatar")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .cornerRadius(25)
                
                
            }
        }
    }
}
