//
//  DetailViewModel.swift
//  Lab2
//
//  Created by Juan jose Morales on 5/5/24.
//

import Foundation
class DetailViewModel: ObservableObject {
    @Published var input = ""
    @Published var result = ""
    let figure: Figure
    let figureViewModel: FigureViewModel // Agregar referencia a FigureViewModel

    init(figure: Figure, figureViewModel: FigureViewModel) { // Pasar FigureViewModel como parámetro
        self.figure = figure
        self.figureViewModel = figureViewModel // Asignar FigureViewModel
    }
    
    var description: String {
        switch figure {
        case .triangle:
            return "Área del triángulo: (base * altura) / 2"
        case .circle:
            return "Área del círculo: π * radio^2"
        case .square:
            return "Área del cuadrado: lado * lado"
        }
    }
    func calculateArea() {
        guard let inputValue = Double(input) else {
            result = "Ingrese un número válido"
            return
        }

        switch figure {
        case .triangle:
            // Suponiendo que "input" contiene la base y la altura separadas por una coma
            let components = input.split(separator: ",")
            guard components.count == 2,
                  let base = Double(components[0]),
                  let height = Double(components[1]) else {
                result = "Ingrese valores válidos para base y altura"
                return
            }
            let area = (base * height) / 2
            result = "Área del triángulo: \(area)"
            
        case .circle:
            guard let radius = Double(input) else {
                result = "Ingrese un número válido para el radio"
                return
            }
            let area = Double.pi * pow(radius, 2)
            result = "Área del círculo: \(area)"
            
        case .square:
            guard let side = Double(input) else {
                result = "Ingrese un número válido para el lado"
                return
            }
            let area = side * side
            result = "Área del cuadrado: \(area)"
        }
    }

}
