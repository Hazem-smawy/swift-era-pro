//
//  InfoScreen.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import SwiftUI

struct InfoScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                InfoItem(color: .red, icon: "person")
                InfoItem(color: .green, icon: "house")
            }
            HStack(spacing: 20) {
                InfoItem(color: .yellow, icon: "person")
                InfoItem(color: .brown, icon: "house")
            }
        }
      
        .padding()
    }
}

struct InfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        InfoScreen()
    }
}

struct InfoItem: View {
    var color: Color
    var icon:String
    var body: some View {
        VStack {
            VStack {
                Image(systemName:icon)
                    .font(.title)
                    .frame(width: 40,height: 40)
                    .foregroundColor(.white)
                    .padding()
                
                    .background {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color)
                        
                    }
                Text("customer")
                    .customTitleFont(bold: true)
                Text("20")
                    .customSubTitleFont()
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background {
            RoundedRectangle(cornerRadius: 25)
                .fill(color.opacity(0.1))
            
        }
    }
}
