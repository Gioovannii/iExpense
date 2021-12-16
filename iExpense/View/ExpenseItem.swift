//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/12/16.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
