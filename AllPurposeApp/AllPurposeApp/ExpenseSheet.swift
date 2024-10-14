//
//  ExpenseSheet.swift
//  SwiftData-Tutorial (Expense App)
//
//  Created by Anish Agarwal on 11/10/24.
//

import SwiftUI

struct AddExpenseSheet: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var value: Double = 0
    @State private var date: Date = .now
    
    var body: some View {
        NavigationStack{
            Form {
                TextField("Expense Name", text: $name)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Value", value: $value, format: .currency(code: "SGD"))
            }
            .navigationTitle("New Expense")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Save") {
                        let expense = Expense(name: name, date: date, value: value)
                        context.insert(expense)
                        
                        dismiss()
                    } //: Button
                } //: Tab bar item group
            } //: ToolBar
        } //: Stack
    }
}

#Preview {
    AddExpenseSheet()
}
