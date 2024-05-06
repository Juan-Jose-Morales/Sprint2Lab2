//
//  FigureViewModel.swift
//  Lab2
//
//  Created by Juan jose Morales on 6/5/24.
//

import Foundation
class FigureViewModel: Identifiable {
    let id = UUID()
    let imageName: String
    let figure: Figure

    init(imageName: String, figure: Figure) {
        self.imageName = imageName
        self.figure = figure
    }
}
