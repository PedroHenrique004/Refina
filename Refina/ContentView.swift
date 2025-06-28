//
//  ContentView.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("userName") var userName: String = ""
    
    var body: some View {
        if userName.isEmpty {
            Name()
        } else {
            Home()
        }
    }
}

#Preview {
    ContentView()
}
