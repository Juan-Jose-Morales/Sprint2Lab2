//
//  DetailView.swift
//  Lab2
//
//  Created by Juan jose Morales on 5/5/24.
//

import Foundation
import SwiftUI
struct DetailView: View {
    
    @ObservedObject var viewModel: DetailViewModel

    var body: some View {
        VStack {
            Image(systemName: viewModel.figureViewModel.imageName) // Acceder a la imagen a través del ViewModel de la figura seleccionada
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Text(viewModel.description)
                .padding()
            TextField("Ingrese los números", text: $viewModel.input)
                .padding()
            Button(action: {
                viewModel.calculateArea()
            }) {
                Text("Calcular")
            }
            Text(viewModel.result)
                .padding()
        }
    }
}




struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailViewModel(figure: .triangle, figureViewModel: FigureViewModel(imageName: "triangle", figure: .triangle))
        return DetailView(viewModel: viewModel)
    }
}
