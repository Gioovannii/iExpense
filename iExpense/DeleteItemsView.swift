//
//  DeleteItemsView.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

struct DeleteItemsView: View {
    @State private var numbers = [Int]()
    @State var currentNumber = 1
    var body: some View {
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }
            }
            
            Button("Add number") {
                self.numbers.append(self.currentNumber)
                self.currentNumber += 1
            }
        }
    }
}

struct DeleteItemsView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteItemsView()
    }
}
