//
//  NewArticleView.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct NewArticle: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var url: String = ""
    // Inicializa com um valor válido da lista
    @State private var category: String = "Geral"
    
    let currentUser = users[0]
    
    let categories = ["Geral", "Design", "Codigo"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Título do artigo")) {
                    TextField("Digite o título", text: $title)
                }

                Section(header: Text("Descrição")) {
                    TextEditor(text: $description)
                        .frame(minHeight: 100)
                }

                Section(header: Text("Link")) {
                    TextField("Cole o link do artigo", text: $url)
                        .keyboardType(.URL)
                        .autocapitalization(.none)
                }

                Section(header: Text("Conteúdo")) {
                    Picker("Escolha o tema do artigo", selection: $category) {
                        ForEach(categories, id: \.self) { cat in
                            Text(cat).tag(cat)
                        }
                    }
                }
            }
            .navigationBarTitle("Criar artigo", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button("Cancelar") {
                        dismiss()
                    }
                    .foregroundColor(.red),
                trailing:
                    Button("Salvar") {
                        let newArticle = ArticleModel(
                            title: title,
                            url: url,
                            owner: currentUser,
                            description: description,
                            category: category
                        )
                        print("Novo artigo criado:", newArticle)
                        dismiss()
                    }
                    .foregroundColor(.blue)
                    .disabled(title.isEmpty || url.isEmpty || category.isEmpty)
            )
        }
    }
}
