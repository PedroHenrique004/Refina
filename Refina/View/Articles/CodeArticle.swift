//
//  CodeArticle.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct CodeArticle: View {
    
    let codeArticles = mockArticles.filter { $0.category == "Codigo" }

    var body: some View {
        ZStack {
            Color.accent.edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading, spacing: 16) {
                Text("Código")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.text)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(codeArticles, id: \.title) { article in
                            Article(generalArticle: article)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.top)
        }
    }
}

#Preview {
    CodeArticle()
}
