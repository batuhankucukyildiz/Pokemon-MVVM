//
//  PokemonModel.swift
//  Pokemon-MVVM
//
//  Created by Batuhan Kucukyildiz on 18.08.2023.
//

import Foundation



struct PokemonModel: Decodable , Identifiable {
    let id : Int
    let name : String
    let imageUrl : String
    let type : String
    let description : String
    let height : Int
    let weight : Int
    
}
 

