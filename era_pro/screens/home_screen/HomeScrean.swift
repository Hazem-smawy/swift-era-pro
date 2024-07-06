//
//  HomeScrean.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import SwiftUI

struct HomeScrean: View {
    var body: some View {
    
        ScrollView(showsIndicators: false){
            VStack {
                //headings
                HomeWelecomView()
                
                
                // statistics
                HStack {
                    HomeSummaryView(color: .red, icon: "arrow.uturn.down")
                    HomeSummaryView(color: .green, icon: "arrow.uturn.up")
 
                }
                HStack {
                    HomeSummaryView(color: .red, icon: "arrow.uturn.down")
                    HomeSummaryView(color: .green, icon: "arrow.uturn.up")
 
                }
                
                VStack(alignment: .trailing) {
                    Text("الخدمات")
                        .customSubTitleFont(bold: true)
                    HStack(spacing: 20) {
                        HomeServiceView(color: .red, icon: "arrow.turn.left.down",title: "فاتورة مرتجع")
                        HomeServiceView(color: .green, icon: "arrow.down",title: "سند قبض")
                        HomeServiceView(color: .red, icon: "arrow.up.right",title: "سند صرف")
                    }
                    HStack(spacing: 20) {
                        HomeServiceView(color: MyColor.primaryColor, icon: "chart.bar",title: "الإحصائيات")
                        HomeServiceView(color: MyColor.secondaryColor, icon: "shippingbox",title: "درج النقدية")
                        HomeServiceView(color: .green, icon: "arrowshape.turn.up.forward.fill",title: "فاتورة مبيعات")
                       
                    }
                    HStack(spacing: 20) {
                        HomeServiceView(color: .yellow, icon: "newspaper",title: "التقارير")
                        HomeServiceView(color: .green, icon: "arrow.up",title: "التقارير")
                        HomeServiceView(color: MyColor.primaryColor, icon: "arrow.down",title: "التقارير")
                        
                    }

                  
                }
                .padding()
                .frame(maxWidth: .infinity)
               .background(MyColor.bgColor.cornerRadius(12))
                .padding(.top)
                
                HStack {
                    Image(systemName: "arrow.left")
                    Text("عرض الكل")
                        .customSubTitleFont()
                    Spacer()
                    Text("احدث الزيارات")
                        .customTitleFont()
                    
                }
                .padding()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("1000")
                            .customTitleFont()
                        Text("10/2/2022")
                            .customBodyFont()
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("محمد علي محمد")
                            .customTitleFont(bold: true)
                        Text("10/2/2022")
                            .foregroundColor(.red)
                            .customBodyFont()
                            
                    }
                   Image(systemName: "arrowshape.turn.up.left")
                        .foregroundColor(.red)
                        .padding()
                        .background {
                            Circle()
                                .fill(.red.opacity(0.1))
                        }
                    
                }
                .padding()
                .background {
                    Color.white.cornerRadius(12)
                }
                Spacer()
            }
            
            
            
        }
        .padding()
        .background(MyColor.containerColor)
        
    }
}

struct HomeScrean_Previews: PreviewProvider {
    static var previews: some View {
        HomeScrean()
    }
}

