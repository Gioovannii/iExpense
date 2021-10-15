//
//  UserDefault.swift
//  iExpense
//
//  Created by Giovanni Gaffé on 2021/10/14.
//

import SwiftUI

struct UserDefaultView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        VStack {
            Button("Tap count \(tapCount)") {
                self.tapCount += 1
                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
        }
    }
}

struct UserDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultView()
    }
}
