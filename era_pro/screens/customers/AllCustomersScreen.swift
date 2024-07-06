//
//  AllCustomersView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI

struct AllCustomersView: View {
    @State private var search:String = ""
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "ellipsis.circle")
                    .font(.title)
                    .foregroundColor(MyColor.textSecondary)
                Spacer()
                CustomTextField(textFieldBind: $search, placeHolder: "")
                Spacer()
                Image(systemName: "arrow.right.circle")
                    .font(.title)
                    .foregroundColor(MyColor.textSecondary)
            }
            
            //customer item
            CustomerItemView()
            Spacer()
            
        }//:Vstack
        
    }
}

struct AllCustomersView_Previews: PreviewProvider {
    static var previews: some View {
        AllCustomersView()
            .padding()
    }
}
