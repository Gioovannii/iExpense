//
//  ContentView.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
//    @StateObject var expenses = Expenses()

    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        
                        Spacer()
                        if item.amount < 11 {
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundColor(Color.green)
                        } else if item.amount < 101 {
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundColor(Color.yellow)
                        } else {
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundColor(Color.red)
                        }
                    }
                }
                .onDelete(perform: removeItems(at:))
            }
        
            .navigationTitle("iExpense")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing:
                                    Button(action: {
                self.showingAddExpense = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddExpense) {
                // show add view here
                AddView(expenses: self.expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
