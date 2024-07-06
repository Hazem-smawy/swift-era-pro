//
//  CustomerViewItem.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI


struct CustomerItemView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "ellipsis")
                    .font(.title)
                    .foregroundColor(MyColor.textSecondary)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("حازم السماوي")
                        .customTitleFont(bold: true)
                    Text("email")
                        .customBodyFont()
                }
                Image("avatar")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .scaledToFit()
                    .cornerRadius(25)
            }
            
            
            
            HStack(spacing:20) {
                Image(systemName: "phone")
                Image(systemName: "message")
                Spacer()
                HStack() {
                    Text("إضافة عملية")
                        .foregroundColor(MyColor.primaryColor)
                        .customSubTitleFont()
                    Image(systemName: "plus")
                }//:HStack
                .foregroundColor(MyColor.primaryColor)
                .padding(.vertical,7)
                .padding(.horizontal)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(MyColor.primaryColor.opacity(0.5))
                }
                .padding(.top,10)
            }//:HStack
            
        }//:VStack
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .stroke(MyColor.secondaryColor.opacity(0.2),lineWidth: 1)
        }
        .padding(.vertical)
    }
}


struct CustomerViewItem_Previews: PreviewProvider {
    static var previews: some View {
        CustomerItemView()
            .padding()
    }
}
