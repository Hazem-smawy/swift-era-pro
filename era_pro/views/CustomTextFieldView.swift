//
//  CustomTextField.swift
//  era_pro
//
//  Created by B-ALDUAIS on 29/06/2024.
//

import Foundation
//
//  theme.swift
//  Accounting App
//
//  Created by B-ALDUAIS on 05/06/2023.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var textFieldBind:String
    var placeHolder:String
    var body: some View {
        TextField(placeHolder , text: $textFieldBind)
            .multilineTextAlignment(.leading)
            .padding(10)
            .background(.thickMaterial)
            .cornerRadius(10)
            .customFont(size: 15)
    }
}
struct CustomMoneyField: View {
    @Binding var textFieldBind:String
    var formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
        formatter.currencyGroupingSeparator = ","
        formatter.groupingSize = 3
        formatter.formatWidth = 3
        formatter.alwaysShowsDecimalSeparator = true
            return formatter
        }()
    
    var placeHolder:String
    var body: some View {
        TextField( placeHolder, value: $textFieldBind,formatter:formatter)
        
            .keyboardType(.decimalPad)
            .multilineTextAlignment(.leading)
            .padding(10)
            .background(.thickMaterial)
            .cornerRadius(10)
            .customFont(size: 15)
    }
}


struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomMoneyField(textFieldBind: .constant("3234"), placeHolder: "name")
            .padding()
    }
}





struct CurrencyTextField: View {

    var title: String
    @Binding var value: Double
    
    @FocusState private var isFocused: Bool

    private let currencyNumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency

        return formatter
    }()

    private let decimalNumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.usesGroupingSeparator = false

        return formatter
    }()

    var body: some View {
        TextField(title, value: $value, formatter: isFocused ? decimalNumberFormatter : currencyNumberFormatter)
            .keyboardType(.decimalPad)
            .focused($isFocused)
    }
}
