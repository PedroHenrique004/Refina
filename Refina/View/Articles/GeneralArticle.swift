//
//  GeneralArticle.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct GeneralArticle: View {
    
    let generalArticles = mockArticles.filter { $0.category == "Geral" }

    var body: some View {
        ZStack {
            Color.accent.edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading, spacing: 16) {
                Text("Gerais")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.text)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(generalArticles, id: \.title) { article in
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
    GeneralArticle()
}
