//
//  Article.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct Article: View {
    
    let generalArticle: ArticleModel

    var body: some View {
        ZStack {
            Color.accentColor.edgesIgnoringSafeArea(.all)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: 317, height: 250)
                .foregroundColor(Color.accent)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.text, lineWidth: 2)
                )

            VStack {
                VStack(alignment: .leading) {
                    Text(generalArticle.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.text)
                        .padding(.bottom, 14)

                    Text(generalArticle.description)
                        .foregroundStyle(Color.descriptions)
                        .fontWeight(.semibold)
                        .padding(.bottom, 14)

                    Text("Compartilhado por: \(generalArticle.owner.name)")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.text)
                        .padding(.bottom, 14)
                }
                .frame(width: 300, height: 231)

                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: 317, height: 1)
                        .padding(.bottom, 4)

                    Button {
                        if let url = URL(string: generalArticle.url), UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        } else {
                            print("URL inválida:", generalArticle.url)
                        }
                    } label: {
                        Text("Acessar")
                            .foregroundStyle(Color.action)
                            .padding(.leading, 129)
                    }

                }
                .frame(height: 40)
                .padding(.top, -28)
                .padding(.bottom, 15)
            }
        }
    }
}
