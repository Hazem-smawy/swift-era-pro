//
//  HomeSummaryViw.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
import SwiftUI

struct HomeSummaryView: View {
    var color:Color
    var icon:String
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 5) {
            HStack {
                Spacer()
                Text("المبيعات")
                    .customTitleFont(bold: true)
                Spacer()
                    .frame(maxWidth: 10)
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 15,height: 15)
                    .foregroundColor(color)
                
            }
            HStack {
                Text("المبيعات")
                    .customFont(size: 14)
                Text(" اليوم:")
                    .customSubTitleFont()
                Spacer()
                    .frame(maxWidth: 5)
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 10,height: 10)
                    .foregroundColor(.red)
                
            }
            HStack {
                Text("112312")
                    .customTitleFont()
                
                Text(" اليوم:")
                    .customSubTitleFont()
                Spacer()
                    .frame(maxWidth: 5)
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 10,height: 10)
                    .foregroundColor(.green)
                
            }
            
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(MyColor.bgColor.cornerRadius(12))
    }
}
