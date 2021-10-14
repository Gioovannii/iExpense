//
//  StructOrState.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct StructOrState: View {
    @ObservedObject private var user = User()
    var body: some View {
        
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

struct StructOrState_Previews: PreviewProvider {
    static var previews: some View {
        StructOrState()
    }
}
