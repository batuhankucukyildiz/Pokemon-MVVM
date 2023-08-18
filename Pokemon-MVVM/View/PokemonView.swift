//
//  PokemonView.swift
//  Pokemon-MVVM
//
//  Created by Batuhan Kucukyildiz on 18.08.2023.
//

import SwiftUI

struct PokemonView: View {
    private let colums = [GridItem(.flexible()) , GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: colums, spacing: 20){
                    ForEach(1..<150){_ in
                        PokemonCell()
                    }
                }
            }
        }.navigationTitle("Pokemon")
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
