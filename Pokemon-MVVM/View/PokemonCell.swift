//
//  PokemonCell.swift
//  Pokemon-MVVM
//
//  Created by Batuhan Kucukyildiz on 18.08.2023.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading){
                Text("Pokemon Name".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top , 8)
                    .padding(.leading)
                HStack{
                    Text("Pokemon Type")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal , 16)
                        .padding(.vertical , 8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)))
                    Image("balbazar")
                        .resizable()
                        .scaledToFit()
                        .padding(.bottom)
                        .padding(.trailing , 8)
                        .frame(width: 80 , height: 80)
                }
            }
        }
        .background(.green)
        .cornerRadius(10)
        .shadow(color: .green, radius: 10 , x : 0 , y: 0)
        
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PokemonCell()
        }.previewLayout(.fixed(width: 200, height:200))
    }
}
