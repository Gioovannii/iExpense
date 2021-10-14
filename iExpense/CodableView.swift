//
//  CodableView.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

struct UserObject: Codable {
    var firstName: String
    var lastName: String
}

struct CodableView: View {
    @State private var user = UserObject(firstName: "Giovanni", lastName: "Gaffé")
    
    var body: some View {
        VStack {
            Button("Save User") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(self.user) {
                    
                }
            }
            
            Text("Hello, \(user.firstName)!")
        }
        
    }
}

struct CodableView_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
