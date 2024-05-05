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
    @State private var baseInput = ""
    @State private var heightInput = ""

    var body: some View {
        VStack {
            Image(systemName: viewModel.figureViewModel.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            Text(viewModel.description)
                .padding()
            if viewModel.figure == .triangle {
                TextField("Base", text: $baseInput)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                TextField("Altura", text: $heightInput)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            } else {
                TextField("Ingrese el número", text: $viewModel.input)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            Button(action: {
                if viewModel.figure == .triangle {
                    viewModel.calculateArea(base: baseInput, height: heightInput)
                } else {
                    viewModel.calculateArea()
                }
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
