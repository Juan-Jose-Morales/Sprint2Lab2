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
            
        }
        //.sheet(isPresented: $viewModel.showDetail) {
           // DetailView(viewModel: viewModel.selectedFigureViewModel!)
       // }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
