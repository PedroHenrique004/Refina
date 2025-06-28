//
//  Mock.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import Foundation


let users = [
    UserModel(id: UUID(), name: "Pedro Santos"),
    UserModel(id: UUID(), name: "Maria Oliveira"),
    UserModel(id: UUID(), name: "João Silva")
]

let mockArticles: [ArticleModel] = [

    // GERAL
    ArticleModel(
        title: "Como manter o foco em ambientes digitais",
        url: "https://exemplo.com/foco-ambiente-digital",
        owner: users[0],
        description: "Técnicas e ferramentas para manter o foco no dia a dia online.",
        category: "Geral"
    ),
    ArticleModel(
        title: "Organização pessoal com Notion",
        url: "https://exemplo.com/notion-organizacao",
        owner: users[1],
        description: "Dicas para organizar tarefas, metas e rotinas no Notion.",
        category: "Geral"
    ),
    ArticleModel(
        title: "Minimalismo digital",
        url: "https://exemplo.com/minimalismo-digital",
        owner: users[2],
        description: "Como reduzir distrações digitais e viver com mais intenção.",
        category: "Geral"
    ),

    // DESIGN
    ArticleModel(
        title: "Princípios de Design para Iniciantes",
        url: "https://exemplo.com/design-iniciantes",
        owner: users[0],
        description: "Aprenda os fundamentos essenciais do design gráfico.",
        category: "Design"
    ),
    ArticleModel(
        title: "UX Writing: Escrevendo para usuários",
        url: "https://exemplo.com/ux-writing",
        owner: users[1],
        description: "Como escrever textos mais claros e objetivos em interfaces.",
        category: "Design"
    ),
    ArticleModel(
        title: "Design responsivo: o guia completo",
        url: "https://exemplo.com/design-responsivo",
        owner: users[2],
        description: "Tudo o que você precisa saber sobre responsividade.",
        category: "Design"
    ),

    // CÓDIGO
    ArticleModel(
        title: "Introdução ao Swift",
        url: "https://exemplo.com/introducao-swift",
        owner: users[0],
        description: "Aprenda os primeiros passos com a linguagem Swift.",
        category: "Codigo"
    ),
    ArticleModel(
        title: "Como criar uma API REST com Node.js",
        url: "https://exemplo.com/api-node",
        owner: users[1],
        description: "Tutorial passo a passo para criar sua primeira API.",
        category: "Codigo"
    ),
    ArticleModel(
        title: "Estilizando com Tailwind CSS",
        url: "https://exemplo.com/tailwind-css",
        owner: users[2],
        description: "Guia rápido para aplicar estilos com Tailwind.",
        category: "Codigo"
    )
]
