//
//  ShowingViews.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    var body: some View {
        VStack {
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
            .padding()
            Text("Hello \(name)")
        }
    }
}

struct ShowingViews: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ShowingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingViews()
    }
}
