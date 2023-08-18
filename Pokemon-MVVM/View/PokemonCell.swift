//
//  PokemonCell.swift
//  Pokemon-MVVM
//
//  Created by Batuhan Kucukyildiz on 18.08.2023.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    let pokemon: PokemonModel
    @ObservedObject var viewModel = PokemonViewModel()
    let backgroundColor : Color
    init(pokemon : PokemonModel , viewModel : PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name.uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top , 8)
                    .padding(.leading)
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal , 16)
                        .padding(.vertical , 8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)))
                        .frame(width: 100 , height: 100)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .padding(.bottom)
                        .padding(.trailing , 8)
                        .frame(width: 80 , height: 80)
                }
            }
        }
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(10)
        .shadow(color: .green, radius: 10 , x : 0 , y: 0)
        
    }
}

/*
struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PokemonCell(pokemon: PokemonList[1])
        }.previewLayout(.fixed(width: 200, height:200))
    }
}
*/
