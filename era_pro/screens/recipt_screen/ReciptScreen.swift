//
//  ReciptView.swift
//  era_pro
//
//  Created by B-ALDUAIS on 06/07/2024.
//

import SwiftUI

struct ReciptView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HeaderView()
                VStack {
                    HStack {
                        Text("111")
                            .font(.body)
                        Text("رقم السند :")
                            .customSubTitleFont()
                        Spacer()
                        Text("حازم السماوي")
                            .customTitleFont(bold: true)
                    }
                    HStack {
                        Text("100")
                            .font(.headline)
                        Spacer()
                        Text("200/2/2")
                            .font(.callout)
                        Image(systemName: "calendar")
                        Spacer()
                        Text("نقدا")
                            .foregroundColor(.green)
                            .customSubTitleFont()
                            .padding(.horizontal)
                            .padding(.vertical,5)
                            .background {
                                Capsule()
                                    .fill(.green.opacity(0.1))
                            }
                        
                    }
                    HStack {
                        Spacer()
                        HStack(spacing:30) {
                            Image(systemName: "trash")
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.red)
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .frame(width: 20,height: 20)

                                .foregroundColor(.green)
                            Image(systemName: "printer")
                                .resizable()
                                .frame(width: 20,height: 20)

                        }
                        .padding(.vertical,15)
                        .padding(.horizontal)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.secondary.opacity(0.2))
                        }
                        .padding(.top,10)
                    }
                   
                }//:VStack
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(MyColor.secondaryColor.opacity(0.2),lineWidth: 1)
                }
                
                
                //end
                Spacer()
                
            }//:VStack
            Image(systemName: "plus")
                .resizable()
                .frame(width: 20,height: 20)
                .foregroundColor(.white)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(MyColor.primaryColor)
                    
                }
                .padding()
        }//:ZStack
    }
}

struct ReciptView_Previews: PreviewProvider {
    static var previews: some View {
        ReciptView()
            .padding()
    }
}
