//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Angelo Delgado on 6/21/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
