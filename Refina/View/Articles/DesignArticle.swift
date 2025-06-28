//
//  DesignArticle.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct DesignArticle: View {
    
    let designArticles = mockArticles.filter { $0.category == "Design" }

    var body: some View {
        ZStack {
            Color.accent.edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading, spacing: 16) {
                Text("Design")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.text)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(designArticles, id: \.title) { article in
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
    DesignArticle()
}
