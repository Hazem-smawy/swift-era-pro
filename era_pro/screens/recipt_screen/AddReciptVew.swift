//
//  AddReciptVew.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI

struct AddReciptVew: View {
    @State private var customerName :String = ""
    @State private var money :String = ""
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Spacer()
                Text("سند صرف")
                    .customTitleFont(bold: true)
                Image(systemName: "arrow.up.right")
                    .foregroundColor(.red)
                Spacer()
            }
            Divider()
                .padding(.bottom,10)
            HStack {
                Text("111")
                    .font(.body)
                Text("رقم السند :")
                    .customSubTitleFont()
                Spacer()
                Text("111")
                    .font(.body)
                Text("رقم السند :")
                    .customSubTitleFont()
            }
            
            Text("اسم العميل")
                .customTitleFont()
                .padding(.top,10)
            HStack(spacing:20) {
                Image(systemName: "barcode")
                    .resizable()
                    .frame(width: 30,height: 30)
                
                    
                CustomTextField(textFieldBind: $customerName, placeHolder: "")
            }
            HStack {
                VStack(alignment:.trailing) {
                    Text("المبلغ")
                        .customTitleFont()
                    CustomTextField(textFieldBind: $money, placeHolder: "")
                }
                VStack(alignment: .trailing) {
                    Text("العملة")
                        .customTitleFont()
                    CustomTextField(textFieldBind: $money, placeHolder: "")
                }
            }
            Text("البيان")
                .customTitleFont()
            CustomTextField(textFieldBind: $customerName, placeHolder: "")
            Divider()
                .padding(.vertical)
            VStack {
                HStack {
                    Spacer()
                    Text("اجل")
                        .customTitleFont()
                    Image(systemName: "circle")
                    Spacer()
                    Text("نقدا")
                        .customTitleFont()
                    Image(systemName: "circle")
                    Spacer()
                    Text("نوع السداد")
                        .customTitleFont()
                }
                CustomBtn(color: MyColor.primaryColor, label: "حفظ") {
                    //
                }
            }
           

        }
    }
}

struct AddReciptVew_Previews: PreviewProvider {
    static var previews: some View {
        AddReciptVew()
            .padding()
    }
}
