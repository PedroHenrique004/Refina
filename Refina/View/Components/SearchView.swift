//
//  SearchView.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    
    // Artigos filtrados por título ou descrição
    var filteredArticles: [ArticleModel] {
        if searchText.isEmpty {
            return []
        } else {
            return mockArticles.filter {
                $0.title.localizedCaseInsensitiveContains(searchText) ||
                $0.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.accent.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    TextField("Buscar artigo...", text: $searchText)
                        .padding()
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(12)
                        .padding()
                    
                    if filteredArticles.isEmpty {
                        Spacer()
                        Text("Nenhum resultado encontrado.")
                            .foregroundStyle(.text)
                            .padding()
                        Spacer()
                    } else {
                        ScrollView {
                            VStack(spacing: 24) {
                                ForEach(filteredArticles, id: \.title) { article in
                                    Article(generalArticle: article)
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Pesquisar")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Fechar") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
