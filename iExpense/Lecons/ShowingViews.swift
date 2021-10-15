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
    @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            // content of the sheet
            SecondView(name: "Giovanni")
        }
    }
}

struct ShowingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingViews()
    }
}
