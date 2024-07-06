//
//  ItemDetailsView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI

struct ItemDetailsView: View {
    @State private var sellingPrice:String = ""
    @State private var totalPrice:String = ""
    @State private var descountMoney:String = ""
    @State private var descountPercent:String = ""
    var body: some View {
        VStack {
            HStack {
                Text("11")
                    .foregroundColor(.white)
                    .customSubTitleFont()
                    .padding(10)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(MyColor.secondaryColor)
                    }
                Spacer()
                
                Text("مجموعة حسابات")
                    .customTitleFont()
                
            }
            
            HStack {
                Button("helle") {
                    //
                }
                Spacer()
                Text("الوحده")
                    .customSubTitleFont()
            }
            Divider()
            HStack {
                
                CustomTextField(textFieldBind:$sellingPrice, placeHolder: "")
                Text("1")
                    .padding()
                    .background {
                        Circle()
                            .fill(.secondary.opacity(0.1))
                    }
                Text("1")
                    .padding()
                    .background {
                        Circle()
                            .fill(.secondary.opacity(0.1))
                    }
                Text("1")
                    .padding()
                    .background {
                        Circle()
                            .fill(.secondary.opacity(0.1))
                    }
                
                Text("سعر البيع")
                    .customSubTitleFont()
                
            }
            Text("الكمية والإجمالي")
                .customSubTitleFont()
            HStack {
                CustomTextField(textFieldBind: $totalPrice, placeHolder: "")
                Text("اجمالي المبلغ")
                Image(systemName: "minus.circle")
                    .font(.title)
                Text("11")
                    .customTitleFont()
                Image(systemName: "plus.circle")
                    .font(.title)
            }
            Divider()
            HStack {
                CustomTextField(textFieldBind: $descountMoney, placeHolder: "")
                CustomTextField(textFieldBind: $descountMoney, placeHolder: "")
                
                Text("الخصم")
                    .customSubTitleFont()
            }
            HStack {
                HStack {
                    CustomTextField(textFieldBind: $totalPrice, placeHolder: "")
                    
                    Image(systemName: "minus.circle")
                        .font(.title)
                    Text("11")
                        .customTitleFont()
                    Image(systemName: "plus.circle")
                        .font(.title)
                    Text("الكمية المجانية")
                        .customSubTitleFont()
                }
            }
          
            DiscountAndNotes()
            
           
        }
    }
    
   
}
struct DiscountAndNotes:View {
    @State private var descountMoney:String = ""
    @State private var descountPercent:String = ""
    @State private var note:String = ""
    var body: some View {
        VStack(alignment: .trailing) {
            Divider()
            HStack {
                CustomTextField(textFieldBind: $descountMoney, placeHolder: "")
                CustomTextField(textFieldBind: $descountMoney, placeHolder: "")
                
                Text("ضريبة الصنف")
                    .customSubTitleFont()
            }
            Text("ملاحضة")
                .customSubTitleFont()
            HStack {
                CustomTextField(textFieldBind: $note, placeHolder: "")
            }
            HStack {
                Text("1000")
                    .font(.headline)
            Spacer()
                Text("الأجمالي")
                    .customSubTitleFont()
            }
            .padding(.top)
            CustomBtn(color: MyColor.primaryColor, label: "متابعة") {
                //
            }
            CustomBtn(color: Color.red.opacity(0.7), label: "الغاء") {
                //
            }
        }
    }
}
struct ItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailsView()
            .padding()
    }
}
