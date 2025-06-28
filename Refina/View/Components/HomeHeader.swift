//
//  HomeHeader.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct HomeHeader: View {
    @State private var showNewArticle = false
    var onSearch: () -> Void = {}

    var body: some View {
        HStack {
            Spacer()

            Button(action: onSearch) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundStyle(Color.text)
            }

            Button(action: {
                showNewArticle = true
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundStyle(Color.text)
                    .padding(.leading, 12)
            }
        }
        .frame(width: 370)
        .padding(.top, 12)
        .padding(.trailing, 16)
        .sheet(isPresented: $showNewArticle) {
            NewArticle()
        }
    }
}

#Preview {
    HomeHeader()
}
