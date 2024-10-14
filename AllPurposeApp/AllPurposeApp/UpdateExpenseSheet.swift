//
//  UpdateExpenseSheet.swift
//  SwiftData-Tutorial (Expense App)
//
//  Created by Anish Agarwal on 11/10/24.
//

import SwiftUI

struct UpdateExpenseSheet: View {
    @Environment(\.dismiss) var dismiss
    @Bindable var expense: Expense
    
    var body: some View {
        NavigationStack{
            Form {
                TextField("Expense Name", text: $expense.name)
                DatePicker("Date", selection: $expense.date, displayedComponents: .date)
                TextField("Value", value: $expense.value, format: .currency(code: "SGD"))
            }
            .navigationTitle("Update Expense")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
        
                } //: Tab bar item group
            } //: ToolBar
        } //: Stack
    }
}
