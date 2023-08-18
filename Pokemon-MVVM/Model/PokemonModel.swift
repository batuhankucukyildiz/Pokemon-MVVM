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
 
let PokemonList : [PokemonModel] = [
    .init(id: 1, name: "ivysaur", imageUrl: "", type: "Poison", description: "", height: 5, weight: 5),
    .init(id: 2, name: "Bulbasaur", imageUrl: "", type: "Poison", description: "", height: 5, weight: 5),
    .init(id: 3, name: "ivysaur", imageUrl: "", type: "Poison", description: "", height: 5, weight: 5),
    .init(id: 4, name: "ivysaur", imageUrl: "", type: "fire", description: "", height: 5, weight: 5),
    .init(id: 5, name: "ivysaur", imageUrl: "", type: "fire", description: "", height: 5, weight: 5),
    .init(id: 6, name: "ivysaur", imageUrl: "", type: "fire", description: "", height: 5, weight: 5),
    .init(id: 7, name: "ivysaur", imageUrl: "", type: "Poison", description: "", height: 5, weight: 5)
]
