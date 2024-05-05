//
//  ContentView.swift
//  Lab2
//
//  Created by Juan jose Morales on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Text("Selecciona una figura:")
                .padding()
            ForEach(viewModel.figures) { figure in
                Button(action: {
                    viewModel.select(figure)
                }) {
                    Image(systemName: figure.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                }
            }
        }
        .sheet(isPresented: $viewModel.showDetail) {
            DetailView(viewModel: viewModel.selectedFigureViewModel!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
