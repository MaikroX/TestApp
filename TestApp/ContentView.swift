//
//  ContentView.swift
//  TestApp
//
//  Created by Maik Langer on 18.11.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.topics, id: \.self) {topic in NavigationLink(topic.title) {
                    DetailView(topic: topic)
                }
            }
        }
            .navigationBarTitle("Swift lernen (beta)")
        }
    }
}

#Preview {
    ContentView()
}
