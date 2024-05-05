//
//  ContentViewModel.swift
//  Lab2
//
//  Created by Juan jose Morales on 5/5/24.
//

import Foundation

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var figures = [FigureViewModel]()
    @Published var selectedFigureViewModel: DetailViewModel?
    @Published var showDetail = false

    init() {
        let triangleViewModel = FigureViewModel(imageName: "triangle", figure: .triangle)
        let circleViewModel = FigureViewModel(imageName: "circle", figure: .circle)
        let squareViewModel = FigureViewModel(imageName: "square", figure: .square)
        figures = [triangleViewModel, circleViewModel, squareViewModel]
    }

    func select(_ figureViewModel: FigureViewModel) {
        selectedFigureViewModel = DetailViewModel(figure: figureViewModel.figure, figureViewModel: figureViewModel)
        showDetail = true
    }
}

