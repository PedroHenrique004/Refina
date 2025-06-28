//
//  Name.swift
//  Refina
//
//  Created by Pedro Santos on 27/06/25.
//

import SwiftUI

struct Name: View {
    
    @AppStorage("userName") var userName: String = ""
    @State private var tempName: String = ""
    
    var body: some View {
        ZStack {
            Color.accent.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Refina")
                    .font(.largeTitle)
                    .foregroundStyle(Color.action)
                
                Spacer()
                
                VStack {
                    Text("Qual o seu nome?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.text)
                        .padding(.bottom, 24)

                    TextField("Escreva seu nome", text: $tempName)
                        .padding(.leading, 16)
                        .padding(.vertical, 16)
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.text, lineWidth: 2)
                        )
                        .cornerRadius(8)
                    
                    Button {
                        userName = tempName 
                        print("Nome salvo: \(tempName)")
                    } label: {
                        Text("Enviar")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 150)
                            .background(Color.action)
                            .cornerRadius(12)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 24)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Name()
}
