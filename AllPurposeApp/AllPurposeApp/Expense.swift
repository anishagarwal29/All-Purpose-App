//
//  Expense.swift
//  SwiftData-Tutorial (Expense App)
//
//  Created by Anish Agarwal on 11/10/24.
//

import Foundation
import SwiftData

@Model
class Expense {
    var name: String
    var date: Date
    var value: Double
    
    init(name: String, date: Date, value: Double) {
        self.name = name
        self.date = date
        self.value = value
    }
}
