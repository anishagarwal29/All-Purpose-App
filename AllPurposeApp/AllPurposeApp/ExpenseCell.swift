//
//  ExpenseCell.swift
//  SwiftData-Tutorial (Expense App)
//
//  Created by Anish Agarwal on 11/10/24.
//

import SwiftUI

struct ExpenseCell: View {
    
    let expense: Expense
    @State private var isChecked: Bool = false
    
    var body: some View {
        HStack{
            Text(expense.date, format: .dateTime.month(.abbreviated).day())
                .frame(width: 70, alignment: .leading)
            Text(expense.name)
            Spacer()
            Text(expense.value, format: .currency(code: "SGD"))
            
            
            Image(systemName: isChecked ? "checkmark.circle.fill" : "checkmark.circle")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.leading, 10)
                .foregroundStyle(isChecked ? .blue : .black)
                .onTapGesture {
                    isChecked.toggle()
                }
        } //: HSTACK
    }
}

