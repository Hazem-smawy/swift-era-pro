//
//  HeaderView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "ellipsis.circle")
                .font(.title)
                .foregroundColor(MyColor.textSecondary)
            Spacer()
            Text("فاتورة بيع")
                .customTitleFont()
            Spacer()
            Image(systemName: "arrow.right.circle")
                .font(.title)
                .foregroundColor(MyColor.textSecondary)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
