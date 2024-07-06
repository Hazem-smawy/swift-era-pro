//
//  SellingScreen.swift
//  era_pro
//
//  Created by B-ALDUAIS on 02/07/2024.
//

import SwiftUI

struct SellingScreen: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HeaderView()
                HStack() {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .padding(10)
                        .background {
                            Capsule()
                                .fill(MyColor.secondaryColor)
                        }
                    Spacer()
                    Spacer()
                    Text("مجموعة حسابات")
                        .customSubTitleFont()
                        .padding(.horizontal)
                        .padding(.vertical,10)
                        .background {
                            Capsule()
                                .fill(MyColor.settingColor)
                        }
                    Text("الكل")
                        .foregroundColor(.white)
                        .customSubTitleFont()
                        .padding(.horizontal)
                        .padding(.vertical,10)
                        .background {
                            Capsule()
                                .fill(MyColor.secondaryColor)
                        }
                    
                    
                }
                
                HStack(spacing:20) {
                    SellingItemView(image: "product1")
                    SellingItemView(image: "product3")
                }
                .padding(.vertical)
                Spacer()
            }//:VStack
            .padding()
            
            FooterSellingView()
        }//:ZStack
    }
}

struct SellingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SellingScreen()
    }
}

struct SellingItemView: View {
    var image:String
    var body: some View {
        
        
        
        VStack {
            
            ZStack {
                Image(image)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFill()
                    .frame(height: 180)
                    .cornerRadius(20)
            }
            HStack {
                Text("11")
                    .customSubTitleFont()
                    .padding(.horizontal,5)
                    .padding(.vertical,5)
                    .background {
                        Capsule()
                            .fill(.green.opacity(0.1))
                    }
                Spacer()
                
                Text("مجموعة حسابات")
                    .customSubTitleFont()
                
            }
            HStack {
                Text("1000")
                    .font(.headline)
                Spacer()
                
                Image(systemName: "minus.circle")
                    .font(.title)
                Text("11")
                    .customTitleFont()
                Image(systemName: "plus.circle")
                    .font(.title)
            }
            Spacer()
        }//:VStack
        
        
    }
}

struct FooterSellingView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("1000")
                        .customTitleFont()
                    Text("11")
                        .customSubTitleFont()
                    
                }
                .padding(.leading)
                Divider()
                    .frame(height: 50)
                    .padding(.horizontal)
                VStack {
                    Text("1000")
                        .customTitleFont()
                    Text("11")
                        .customSubTitleFont()
                    
                }
                .padding(.trailing)
                Text("عرض الفاتورة")
                    .foregroundColor(.white)
                    .customSubTitleFont()
                    .padding()
                    .background {
                        Capsule()
                            .fill(MyColor.secondaryColor)
                    }
                
                
                
            }//:HStack
            .padding(.leading)
            .background {
                Capsule()
                    .fill(MyColor.containerColor)
            }
            HStack(spacing:20) {
                HStack {
                    Text("قارئ الباركود")
                    Image(systemName: "dollarsign.square.fill")
                        .font(.headline)
                }
                .foregroundColor(.white)
                .customSubTitleFont()
                .padding()
                .background {
                    Capsule()
                        .fill(MyColor.secondaryColor)
                }
                HStack {
                    Text("دفع الفاتورة")
                    Image(systemName: "barcode.viewfinder")
                        .font(.headline)
                }
                .foregroundColor(.white)
                .customSubTitleFont()
                .padding()
                .background {
                    Capsule()
                        .fill(MyColor.secondaryColor)
                }
                
            }
        }//:VStack
    }
}
