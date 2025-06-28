import SwiftUI

struct Home: View {
    // Estado para controlar a seleção do segmento
    @State private var selectedSegment = 0
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 32) {
                    
                    HomeHeader()
                        .padding(.top, 32)
                        .padding(.bottom, -32)
                    
                    Picker("Selecione a opção", selection: $selectedSegment) {
                        Text("Artigos").tag(0)
                        Text("Meus Artigos").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                  
                    if selectedSegment == 0 {
                        GeneralArticle()
                        CodeArticle()
                        DesignArticle()
                    } else {
                       
                        Text("Aqui aparecem apenas meus artigos")
                            .font(.headline)
                            .padding()
                    }
                }
                .padding(.top, 20)
            }
        }
        .background(Color.accent)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Home()
}
