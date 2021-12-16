//
//  AddView.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/15.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @State private var showingAlert = false
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.numberPad)
            }
            .navigationTitle("Add new expense")
            
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
            
            
//            .navigationBarItems(trailing: Button("Save") {
//                if let actualAmount = Int(self.amount) {
//                    let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
//                    self.expenses.items.append(item)
//
//                    presentationMode.wrappedValue.dismiss()
//                } else {
//                    showingAlert = true
//                }
//            })
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Oups ..."), message: Text("You must enter a price"), dismissButton: .default(Text("OK my bad")))
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
