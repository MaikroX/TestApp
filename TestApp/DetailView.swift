//
//  DetailView.swift
//  TestApp
//
//  Created by Maik Langer on 19.11.24.
//

import SwiftUI

struct DetailView: View {
    
    let topic: Topic
    
    var body: some View {
        
        ScrollView{
            VStack (alignment: .leading, spacing: 12){
                Text("Erklärung")
                    .font(.title)
                    .bold()
                    
                Text(topic.explanation)
                Text("Code Beispiel")
                    .font(.title)
                    .bold()
                Text (topic.codeSnippet)
                    .font(.system(size: 14, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
            
        }
        .navigationTitle(topic.title)
        .navigationBarTitleDisplayMode(.inline)
        
 
    }
}

#Preview {
    DetailView(topic: Topic(title: "Konstante", explanation: "Speichert Daten", codeSnippet: "let variable: String"))
}
